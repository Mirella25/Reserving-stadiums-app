// lib/features/teams/presentation/widgets/team_tile.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/team_entity.dart';

class TeamTile extends StatelessWidget {
  final TeamEntity team;
  final VoidCallback? onTap;
  const TeamTile({super.key, required this.team, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16.r),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: AppColors.primaryColor.withOpacity(.25)),
        ),
        child: Row(
          children: [
            _TeamLogo(url: team.logoUrl, fallback: team.name),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(team.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 14.5.sp, fontWeight: FontWeight.w800)),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Icon(Icons.sports_soccer, size: 14.sp, color: Colors.grey[700]),
                      SizedBox(width: 4.w),
                      Flexible(
                        child: Text(
                          team.sport!.name ?? 'Football',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12.sp, color: Colors.grey[700]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right_rounded, color: Colors.grey[600]),
          ],
        ),
      ),
    );
  }
}

class _TeamLogo extends StatelessWidget {
  final String? url;
  final String fallback;
  const _TeamLogo({required this.url, required this.fallback});

  @override
  Widget build(BuildContext context) {
    final size = 56.w; // مربّع ثابت، ما بيمطّ الصورة
    final initial = (fallback.isNotEmpty ? fallback[0] : '?').toUpperCase();
    final displayUrl = (url == null || url!.isEmpty)
        ? null
        : (url!.startsWith('http') ? url! : 'http://10.0.2.2:8000/storage/$url');

    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: SizedBox(
        width: size,
        height: size,
        child: displayUrl == null
            ? _Fallback(initial: initial)
            : CachedNetworkImage(
          imageUrl: displayUrl,
          fit: BoxFit.cover,             // أهم سطر لمنع التشوّه
          memCacheWidth: (size * 2).toInt(), // تحسين أداء
          placeholder: (_, __) => Container(
            color: AppColors.borderColor.withOpacity(.2),
            child: const Center(child: Icon(Icons.image)),
          ),
          errorWidget: (_, __, ___) => _Fallback(initial: initial),
        ),
      ),
    );
  }
}

class _Fallback extends StatelessWidget {
  final String initial;
  const _Fallback({required this.initial});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.borderColor.withOpacity(.25),
      child: Center(
        child: Text(
          initial,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 18.sp,
            color: AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
