import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_strings.dart';
import 'package:reserving_stadiums_app/features/stadium_details/domain/entities/player/stadium_details_entity.dart';
import 'package:reserving_stadiums_app/features/stadium_details/presentation/pages/player/stadium_details_page.dart';
import '../../../../../core/dependency_injection/injections.dart';
import '../../../../stadium_details/presentation/bloc/player/facilities_bloc/facilities_bloc.dart';
import '../../../../stadium_details/presentation/bloc/player/facilities_bloc/facilities_event.dart';
import '../../../domain/entities/player/stadium_entity.dart';

class StadiumCard extends StatelessWidget {
  final StadiumEntity stadium;

  const StadiumCard({required this.stadium, super.key});

  String _fullUrl(String path) {
    final base = AppConstants.mediaBaseUrl; // مثال: http://10.0.2.2:8000
    if (path.isEmpty) return base;
    final hasTrail = base.endsWith('/');
    final hasLead = path.startsWith('/');
    if (hasTrail && hasLead) return base + path.substring(1);
    if (!hasTrail && !hasLead) return '$base/$path';
    return base + path;
  }

  @override
  Widget build(BuildContext context) {
    final imageUrl = stadium.photos.isNotEmpty ? _fullUrl(stadium.photos.first) : null;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          // صورة الملعب مع fallback للأصول المحلية
          SizedBox(
            height: 110.h,
            width: double.infinity,
            child: imageUrl != null
                ? Image.network(
              imageUrl,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.medium,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return const Center(child: CircularProgressIndicator(strokeWidth: 2));
              },
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/images/stadium2.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                );
              },
            )
                : Image.asset(
              'assets/images/stadium2.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stadium.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 14.sp, color: Colors.grey),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Text(
                        stadium.location,
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.grey[600],
                          fontFamily: 'Lora',
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.h),
                RatingBarIndicator(
                  rating: 4.5,
                  itemCount: 5,
                  itemSize: 15.sp,
                  unratedColor: Colors.grey[300],
                  itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
                ),
                SizedBox(height: 8.h),
                Text(
                  "السعر: \$40",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8.h),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider(
                            create: (_) => getIt<FacilitiesBloc>()..add(LoadFacilitiesEvent(stadium.id)),
                            child: StadiumDetailsPage(stadium: stadium.toDetailsEntity()),
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.arrow_back, color: Colors.white, size: 15),
                        SizedBox(width: 5.w),
                        Text(
                          'view stadium',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 14.sp, color: Colors.white, fontFamily: 'Montserrat'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
