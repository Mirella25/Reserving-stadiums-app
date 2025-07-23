import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';

class CustomGridCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  const CustomGridCard(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border(
            top: BorderSide(color: AppColors.borderColor, width: 2.w),
            right: BorderSide(color: AppColors.borderColor, width: 2.w),
            bottom: BorderSide(color: AppColors.borderColor, width: 2.w),
            left: BorderSide.none,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 134, 217, 137).withOpacity(0.15),
              blurRadius: 12,
              spreadRadius: 2,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32.sp, color: Colors.grey[600]),
            SizedBox(height: 12.h),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Lora',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
