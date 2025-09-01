// lib/features/leagues/presentation/widgets/leagues_list_shimmer.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';

class LeaguesListShimmer extends StatelessWidget {
  final int itemCount;
  const LeaguesListShimmer({super.key, this.itemCount = 6});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 16.h),
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      itemCount: itemCount,
      separatorBuilder: (_, __) => SizedBox(height: 14.h),
      itemBuilder: (_, __) => _shimmerCard(),
    );
  }

  Widget _shimmerCard() {
    return Container(
      height: 168.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.borderColor.withOpacity(0.6), width: 0.8),
        gradient: LinearGradient(
          colors: [
            Colors.white,
            AppColors.primaryColor.withOpacity(0.05), // لمسة خفيفة خضرا
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(14.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _shimmerLine(width: 100.w, height: 22.h, radius: 12.r), // status chip
          SizedBox(height: 14.h),
          _shimmerLine(width: 160.w, height: 16.h),
          SizedBox(height: 10.h),
          _shimmerLine(width: 120.w, height: 12.h),
          SizedBox(height: 8.h),
          _shimmerLine(width: 140.w, height: 12.h),
          SizedBox(height: 8.h),
          _shimmerLine(width: 110.w, height: 12.h),
          SizedBox(height: 8.h),
          _shimmerLine(width: 90.w, height: 12.h),
        ],
      ),
    );
  }

  Widget _shimmerLine({double? width, required double height, double radius = 8}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey.shade300.withOpacity(0.8),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
