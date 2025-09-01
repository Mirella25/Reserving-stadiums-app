// lib/features/teams/presentation/widgets/team_avatar.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

class TeamAvatar extends StatelessWidget {
  final String? url;
  final String name;
  final double size;
  const TeamAvatar({super.key, required this.url, required this.name, this.size = 56});

  @override
  Widget build(BuildContext context) {
    final initials = name.isNotEmpty ? name.trim()[0].toUpperCase() : '?';

    if (url == null || url!.isEmpty) {
      return _fallback(initials);
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(14.r),
      child: CachedNetworkImage(
        imageUrl: url!,
        width: size,
        height: size,
        fit: BoxFit.cover,
        memCacheWidth: (size * 2).toInt(),      // يخفّض الاستهلاك
        maxWidthDiskCache: (size * 3).toInt(),  // يعمل ثَمبنايل على الديسك
        placeholder: (_, __) => _shimmer(),
        errorWidget: (_, __, ___) => _fallback(initials),
      ),
    );
  }

  Widget _fallback(String initials) => ClipRRect(
    borderRadius: BorderRadius.circular(14.r),
    child: Container(
      width: size, height: size,
      color: AppColors.borderColor.withOpacity(.25),
      alignment: Alignment.center,
      child: Text(
        initials,
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w900,
          fontSize: (size * .38).sp,
          color: AppColors.textColor,
        ),
      ),
    ),
  );

  Widget _shimmer() => ClipRRect(
    borderRadius: BorderRadius.circular(14.r),
    child: Container(
      width: size, height: size, color: const Color(0xFFF2F2F2),
    ),
  );
}
