import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DetailsShimmer extends StatelessWidget {
  const DetailsShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final base = Padding(
      padding: EdgeInsets.all(8.w),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Container(
              height: 220.h,
              width: double.infinity,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 22.h,
              width: 220.w,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Container(width: 26.w, height: 18.h, color: Colors.white),
              SizedBox(width: 8.w),
              Expanded(child: Container(height: 16.h, color: Colors.white)),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Container(width: 18.w, height: 16.h, color: Colors.white),
              SizedBox(width: 8.w),
              Container(width: 120.w, height: 16.h, color: Colors.white),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Container(width: 18.w, height: 16.h, color: Colors.white),
              SizedBox(width: 8.w),
              Container(width: 180.w, height: 16.h, color: Colors.white),
            ],
          ),
          SizedBox(height: 12.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                width: double.infinity, height: 14.h, color: Colors.white),
          ),
          SizedBox(height: 6.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                width: double.infinity, height: 14.h, color: Colors.white),
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: 120.w, height: 18.h, color: Colors.white),
              Container(width: 48.w, height: 30.h, color: Colors.white),
            ],
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 40.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, i) => Container(
                width: 100.w,
                height: 36.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
              ),
              separatorBuilder: (_, __) => SizedBox(width: 8.w),
              itemCount: 3,
            ),
          ),
          SizedBox(height: 12.h),
        ],
      ),
    );

    return Shimmer(
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade300,
            Colors.grey.shade100,
            Colors.grey.shade300,
          ],
          stops: const [0.1, 0.5, 0.9],
          begin: const Alignment(-1.0, -0.3),
          end: const Alignment(1.0, 0.3),
        ),
        child: base);
  }
}
