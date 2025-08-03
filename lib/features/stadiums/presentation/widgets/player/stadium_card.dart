import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import '../../../domain/entities/player/stadium_entity.dart';

class StadiumCard extends StatelessWidget {
  final StadiumEntity stadium;

  const StadiumCard({required this.stadium, super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = stadium.photos.isNotEmpty
        ? "http://192.168.1.102:8000/storage/${stadium.photos.first}"
        : null;

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
          SizedBox(
            height: 110.h,
            width: double.infinity,
            child: imageUrl != null
                ? Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Image.asset(
                'assets/images/stadiums_background.jpg',
                fit: BoxFit.cover,
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(child: CircularProgressIndicator(strokeWidth: 2));
              },
            )
                : Image.asset(
              'assets/images/stadiums_background.jpg',
              fit: BoxFit.cover,
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
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back,color: Colors.white,size: 15,),
                        SizedBox(width: 5.w,),
                        Text(
                          'view stadium',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 14.sp,color: Colors.white, fontFamily: 'Montserrat'),
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
