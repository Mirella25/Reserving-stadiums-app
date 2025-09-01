// lib/features/teams/presentation/widgets/empty_my_team.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

class EmptyMyTeam extends StatelessWidget {
  final VoidCallback onCreate;
  const EmptyMyTeam({super.key, required this.onCreate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.borderColor.withOpacity(.6)),
      ),
      child: Row(
        children: [
          Icon(Icons.groups_2_outlined, color: AppColors.primaryColor),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              "You don't have a team yet",
              style: TextStyle(fontSize: 13.5.sp, color: AppColors.textColor),
            ),
          ),
          SizedBox(
            height: 38.h,
            child: ElevatedButton(
              onPressed: onCreate,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                elevation: 0,
              ),
              child: Text('Create', style: TextStyle(fontSize: 12.5.sp)),
            ),
          ),
        ],
      ),
    );
  }
}
