import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_strings.dart';
import 'package:reserving_stadiums_app/features/stadium_details/presentation/pages/player/stadium_details_page.dart';
import '../../../../../core/dependency_injection/injections.dart';
import '../../../../stadium_details/presentation/bloc/player/facilities_bloc/facilities_bloc.dart';
import '../../../../stadium_details/presentation/bloc/player/facilities_bloc/facilities_event.dart';
import '../../../domain/entities/player/stadium_entity.dart';

class StadiumCard extends StatelessWidget {
  final StadiumEntity stadium;
  const StadiumCard({super.key, required this.stadium});

  String _fullUrl(String path) {
    final base = AppConstants.mediaBaseUrl;
    if (path.isEmpty) return base;
    final t = base.endsWith('/'), l = path.startsWith('/');
    if (t && l) return base + path.substring(1);
    if (!t && !l) return '$base/$path';
    return base + path;
  }


  @override
  Widget build(BuildContext context) {
    final imageUrl = stadium.photos.isNotEmpty ? _fullUrl(stadium.photos.first) : null;

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16.r),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => _openDetails(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // صورة بارتفاع ثابت
            SizedBox(
              height: 120.h, // ينسجم مع mainAxisExtent
              child: imageUrl != null
                  ? Image.network(imageUrl, fit: BoxFit.cover, filterQuality: FilterQuality.high)
                  : Image.asset('assets/images/stadium2.jpg', fit: BoxFit.cover),
            ),

            // محتوى البطاقة
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stadium.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp, fontFamily: 'Poppins'),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 14.sp, color: Colors.grey),
                        SizedBox(width: 4.w),
                        Expanded(
                          child: Text(
                            stadium.location,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      children: List.generate(
                        5,
                            (i) => Icon(Icons.star, size: 14.sp, color: i < 4 ? Colors.amber : Colors.grey[300]),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text("السعر: \$40", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, color: Colors.black87)),

                    const Spacer(),

                    SizedBox(
                      height: 34.h,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => _openDetails(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          minimumSize: Size.zero,
                        ),
                        child: Text('View stadium', style: TextStyle(fontSize: 13.sp, color: Colors.white, fontFamily: 'Montserrat')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  void _openDetails(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<FacilitiesBloc>()..add(LoadFacilitiesEvent(stadium.id)),
          child: StadiumDetailsPage(stadium: stadium),
        ),
      ),
    );
  }
}
