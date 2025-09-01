// lib/features/teams/presentation/widgets/count_badge.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

class CountBadge extends StatelessWidget {
  final int count;
  const CountBadge({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(.12),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.primaryColor.withOpacity(.25)),
      ),
      child: Text(
        '$count',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
          fontSize: 12.sp,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
