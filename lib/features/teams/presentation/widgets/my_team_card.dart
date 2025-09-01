// lib/features/teams/presentation/widgets/my_team_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/team_entity.dart';
import 'chip_btn.dart';
import 'team_avatar.dart';

class MyTeamCard extends StatelessWidget {
  final TeamEntity team;
  final bool isCaptain;
  final VoidCallback? onManage;
  final VoidCallback? onInvite;

  const MyTeamCard({
    super.key,
    required this.team,
    required this.isCaptain,
    this.onManage,
    this.onInvite,
  });

  @override
  Widget build(BuildContext context) {
    final sportName = team.sport?.name ?? 'Unknown sport';
    final captainEmail = team.captain?.email;

    final manageEnabled = isCaptain && onManage != null;

    void _blockedMsg() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Only the captain can manage the team'),
          backgroundColor: Colors.black87,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(12.r),
        ),
      );
    }

    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primaryColor.withOpacity(.14), Colors.white],
        ),
        border: Border.all(color: AppColors.primaryColor.withOpacity(.25), width: 1),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 14.r, offset: Offset(0, 6.h))],
      ),
      child: Row(
        children: [
          TeamAvatar(url: team.logoUrl, name: team.name, size: 62.w),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Expanded(
                    child: Text(
                      team.name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w800,
                        fontSize: 16.sp,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: AppColors.primaryColor.withOpacity(.35)),
                    ),
                    child: Text(
                      sportName,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 11.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ]),
                SizedBox(height: 6.h),
                if (captainEmail != null)
                  Text(
                    captainEmail,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey[700]),
                  ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Opacity(
                      opacity: manageEnabled ? 1 : .5,
                      child: ChipBtn(
                        icon: Icons.group_rounded,
                        text: 'Manage',
                        onTap: manageEnabled ? onManage! : _blockedMsg, // ⬅️ بدون كراش
                      ),
                    ),
                    SizedBox(width: 8.w),
                    ChipBtn(
                      icon: Icons.mail_outline_rounded,
                      text: 'Invite',
                      onTap: onInvite ?? () {}, // خليه يشتغل لاحقاً
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
