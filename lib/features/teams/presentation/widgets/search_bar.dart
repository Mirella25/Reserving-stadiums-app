// lib/features/teams/presentation/widgets/search_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

class TeamsSearchBar extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;
  const TeamsSearchBar({super.key, required this.hint, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: AppColors.borderColor.withOpacity(.6)),
      ),
      child: Row(
        children: [
          SizedBox(width: 12.w),
          const Icon(Icons.search_rounded, size: 20),
          SizedBox(width: 8.w),
          Expanded(
            child: TextField(
              onChanged: onChanged,
              style: TextStyle(fontSize: 13.sp),
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey[500], fontSize: 12.5.sp),
              ),
            ),
          ),
          SizedBox(width: 8.w),
        ],
      ),
    );
  }
}
