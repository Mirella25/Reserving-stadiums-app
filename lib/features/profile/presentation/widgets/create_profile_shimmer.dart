import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CreateProfileShimmer extends StatelessWidget {
  const CreateProfileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final base = Colors.grey.shade300;
    final highlight = Colors.grey.shade100;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Create profile",
                style: TextStyle(fontSize: 25.sp, fontFamily: 'Poppins'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Shimmer.fromColors(
              baseColor: base,
              highlightColor: highlight,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.h),
                      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                      decoration: BoxDecoration(
                        color: base,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 40.h,
                            width: 120.w,
                            color: highlight,
                          ),
                          SizedBox(height: 16.h),
                          for (int i = 0; i < 6; i++) ...[
                            Container(
                              height: 48.h,
                              color: base,
                              margin: EdgeInsets.only(bottom: 16.h),
                            ),
                          ],
                          Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Wrap(
                              spacing: 8.w,
                              runSpacing: 8.h,
                              children: List.generate(4, (_) {
                                return Container(
                                  width: 50.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color: highlight,
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 14.w),
                            height: 48.h,
                            decoration: BoxDecoration(
                              color: highlight,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 14.w),
                            height: 48.h,
                            decoration: BoxDecoration(
                              color: highlight,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
