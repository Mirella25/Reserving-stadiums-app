
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:photo_view/photo_view.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_strings.dart';
import 'package:reserving_stadiums_app/features/stadium_details/presentation/pages/player/stadium_map_page.dart';

import '../../../../../core/dependency_injection/injections.dart';
import '../../../../booking/presentation/bloc/booking_times_bloc.dart';
import '../../../../booking/presentation/pages/booking_page.dart';
import '../../../../stadiums/presentation/widgets/player/facility_shimmer.dart';
import '../../../domain/entities/player/stadium_details_entity.dart';
import '../../bloc/player/facilities_bloc/facilities_bloc.dart';
import '../../bloc/player/facilities_bloc/facilities_state.dart';

class StadiumDetailsPage extends StatefulWidget {
  final StadiumDetailsEntity stadium;

  const StadiumDetailsPage({super.key, required this.stadium});

  @override
  State<StadiumDetailsPage> createState() => _StadiumDetailsPageState();
}

class _StadiumDetailsPageState extends State<StadiumDetailsPage> {
  int _currentIndex = 0;


  String _fullUrl(String path) {
    final base = AppConstants.mediaBaseUrl; // مثال: http://10.0.2.2:8000
    if (path.isEmpty) return base;
    final hasTrail = base.endsWith('/');
    final hasLead = path.startsWith('/');
    if (hasTrail && hasLead) return base + path.substring(1);
    if (!hasTrail && !hasLead) return '$base/$path';
    return base + path;
  }


  Widget _netImage(
      String url, {
        double? width,
        double? height,
        BoxFit fit = BoxFit.cover,
      }) {
    return Image.network(
      url,
      width: width,
      height: height,
      fit: fit,
      loadingBuilder: (c, w, progress) {
        if (progress == null) return w;
        return const Center(child: CircularProgressIndicator(strokeWidth: 2));
      },
      errorBuilder: (c, e, s) {
        return Image.asset(
          'assets/images/stadium2.jpg',
          width: width,
          height: height,
          fit: fit,
        );
      },
    );
  }

  void _openGallery(int initialIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              PhotoViewGallery.builder(
                itemCount: widget.stadium.photos.isEmpty
                    ? 1
                    : widget.stadium.photos.length,
                pageController: PageController(initialPage: initialIndex),
                builder: (context, index) {
                  if (widget.stadium.photos.isEmpty) {
                    // ما في صور: fallback مباشرة
                    return PhotoViewGalleryPageOptions.customChild(
                      child: Center(
                        child: Image.asset(
                          'assets/images/stadium2.jpg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      minScale: PhotoViewComputedScale.contained,
                      maxScale: PhotoViewComputedScale.covered * 2,
                    );
                  }

                  final photoPath = widget.stadium.photos[index];
                  final url = _fullUrl(photoPath);

                  return PhotoViewGalleryPageOptions(
                    imageProvider: NetworkImage(url),
                    minScale: PhotoViewComputedScale.contained,
                    maxScale: PhotoViewComputedScale.covered * 2,
                    // fallback إذا فشلت صورة الـ Network داخل PhotoView
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Image.asset(
                          'assets/images/stadium2.jpg',
                          fit: BoxFit.contain,
                        ),
                      );
                    },

                  );
                },
              ),
              Positioned(
                top: 40.h,
                left: 20.w,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageSlider() {
    final photos = widget.stadium.photos;

    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30.r),
        bottomRight: Radius.circular(30.r),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: 250.h,
            child: PageView.builder(
              itemCount: photos.isEmpty ? 1 : photos.length,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              itemBuilder: (context, index) {
                if (photos.isEmpty) {
                  return Image.asset(
                    'assets/images/stadium2.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  );
                }

                final url = _fullUrl(photos[index]);
                return GestureDetector(
                  onTap: () => _openGallery(index),
                  child: _netImage(
                    url,
                    width: double.infinity,
                    height: 250.h,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          if (photos.length > 1)
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  photos.length,
                      (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 4.w),
                    width: _currentIndex == index ? 12.w : 8.w,
                    height: _currentIndex == index ? 12.w : 8.w,
                    decoration: BoxDecoration(
                      color: _currentIndex == index
                          ? Colors.white
                          : Colors.white38,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.stadium;

    IconData _getFacilityIcon(String name) {
      switch (name.toLowerCase()) {
        case 'shower':
          return Icons.shower_outlined;
        case 'changing room':
          return Icons.chair_alt_outlined;
        case 'parking':
          return Icons.local_parking_outlined;
        case 'wifi':
          return Icons.wifi;
        case 'cafeteria':
          return Icons.local_cafe;
        case 'restroom':
          return Icons.wc;
        default:
          return Icons.check_circle_outline;
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.r),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider(
                  create: (_) => getIt<BookingTimesBloc>(),
                  child: BookingPage(stadiumId: s.id),
                ),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            padding: EdgeInsets.symmetric(vertical: 14.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.r),
            ),
          ),
          child: Text(
            'Book Now',
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildImageSlider(),
          Padding(
            padding: EdgeInsets.all(16.r),
            child: Container(
              padding: EdgeInsets.all(18.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.r,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Stadium Name + Rating + Price
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          s.name,
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RatingBarIndicator(
                              rating: 4.5,
                              itemCount: 5,
                              itemSize: 20.sp,
                              itemBuilder: (_, __) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 6.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.backgroundColor,
                                border: Border.all(
                                  color: AppColors.primaryColor
                                      .withOpacity(0.5),
                                ),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    LucideIcons.wallet,
                                    size: 18.sp,
                                    color: AppColors.primaryColor,
                                  ),
                                  SizedBox(width: 6.w),
                                  Text(
                                    '\$40 / hour',
                                    style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  // Size Row
                  Row(
                    children: [
                      Icon(LucideIcons.ruler, size: 18.sp, color: Colors.grey),
                      SizedBox(width: 6.w),
                      Text(
                        '${s.length}m x ${s.width}m',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: 'Lora',
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  // Location Row
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,
                          size: 18.sp, color: Colors.grey[700]),
                      SizedBox(width: 6.w),
                      Expanded(
                        child: Text(
                          s.location,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Lora',
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => StadiumMapPage(
                                latitude: s.latitude,
                                longitude: s.longitude,
                                stadiumName: s.name,
                              ),
                            ),
                          );
                        },
                        icon: Icon(Icons.map,
                            size: 18.sp, color: AppColors.primaryColor),
                        label: const Text(
                          'Map',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 20.h),
                  // Description
                  Text(
                    'Description',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    s.description,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Lora',
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  // Facilities
                  BlocBuilder<FacilitiesBloc, FacilitiesState>(
                    builder: (context, state) {
                      if (state is FacilitiesLoading) {
                        return const Center(child: FacilityShimmer());
                      } else if (state is FacilitiesLoaded) {
                        final facilities = state.facilities;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Facilities',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textColor,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            Wrap(
                              spacing: 8.w,
                              runSpacing: 8.h,
                              children: facilities.map((facility) {
                                final icon = _getFacilityIcon(facility.name);
                                return Chip(
                                  backgroundColor: AppColors.backgroundColor,
                                  shape: StadiumBorder(
                                    side: BorderSide(
                                      color: AppColors.borderColor,
                                    ),
                                  ),
                                  avatar: Icon(
                                    icon,
                                    size: 18.sp,
                                    color: AppColors.primaryColor,
                                  ),
                                  label: Text(
                                    facility.name,
                                    style: TextStyle(
                                      color: AppColors.textColor,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        );
                      } else if (state is FacilitiesError) {
                        return const Text(
                          "Failed to load facilities",
                          style: TextStyle(color: Colors.red),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
