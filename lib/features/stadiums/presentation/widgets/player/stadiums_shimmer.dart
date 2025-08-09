import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StadiumShimmer extends StatelessWidget {
  final int index;

  const StadiumShimmer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // صورة
            Container(
              height: 110.h,
              width: double.infinity,
              color: Colors.grey[300],
            ),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // اسم الملعب
                  Container(
                    height: 14.h,
                    width: 80.w,
                    color: Colors.grey[300],
                  ),
                  SizedBox(height: 6.h),
                  // الموقع
                  Container(
                    height: 12.h,
                    width: 100.w,
                    color: Colors.grey[300],
                  ),
                  SizedBox(height: 6.h),
                  // نجوم
                  Row(
                    children: List.generate(5, (_) => Padding(
                      padding: EdgeInsets.only(right: 4.w),
                      child: Container(
                        width: 12.w,
                        height: 12.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[300],
                        ),
                      ),
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    )
        .animate()
        .fadeIn(duration: 400.ms, delay: (index * 100).ms)
        .slideX(begin: 0.4, duration: 400.ms, delay: (index * 100).ms);
  }
}
