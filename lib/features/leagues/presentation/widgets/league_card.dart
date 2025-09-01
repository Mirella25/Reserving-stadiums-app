// lib/features/leagues/presentation/widgets/league_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/league_entity.dart';

class LeagueCard extends StatelessWidget {
  final LeagueEntity league;
  final void Function(int stadiumId)? onStadiumTap; // 👈 نمرر كولباك

  const LeagueCard({
    super.key,
    required this.league,
    this.onStadiumTap,
  });

  String _fmtDate(DateTime? d) {
    if (d == null) return '—';
    final dt = d.toLocal();
    final y = dt.year.toString().padLeft(4, '0');
    final m = dt.month.toString().padLeft(2, '0');
    final day = dt.day.toString().padLeft(2, '0');
    return '$y-$m-$day';
  }

  @override
  Widget build(BuildContext context) {
    final isActive = (league.status ?? '').toLowerCase() == 'active';

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 168.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: AppColors.borderColor, width: 0.9),
          gradient: LinearGradient(
            colors: [
              AppColors.primaryColor.withOpacity(0.12),
              Colors.white,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
          image: const DecorationImage(
            image: AssetImage('assets/images/trophy_bg_soft.png'), // ضع صورة الكأس الخفيفة
            alignment: Alignment.centerLeft,
            fit: BoxFit.contain,
            opacity: 0.08,
          ),
        ),
        padding: EdgeInsets.all(14.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                _StatusChip(isActive: isActive, label: league.status ?? '—'),
                const Spacer(),
                const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black26),
              ],
            ),
            SizedBox(height: 8.h),

            Text(
              league.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15.sp,
                fontWeight: FontWeight.w800,
                color: AppColors.textColor,
              ),
            ),
            if ((league.description ?? '').trim().isNotEmpty) ...[
              SizedBox(height: 6.h),
              Text(
                league.description!.trim(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'Lora',
                  fontSize: 12.5.sp,
                  color: AppColors.textColor.withOpacity(0.85),
                ),
              ),
            ],

            SizedBox(height: 8.h),
            _InfoRow(icon: Icons.calendar_today_outlined, label: 'Start', value: _fmtDate(league.startDate)),
            SizedBox(height: 6.h),
            _InfoRow(icon: Icons.calendar_month_outlined, label: 'End', value: _fmtDate(league.endDate)),
            SizedBox(height: 6.h),

            _IconTextSimple(
              icon: Icons.sports_soccer,
              text: league.sportName ?? '—',
              textStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.5.sp,
                color: AppColors.textColor.withOpacity(0.9),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 6.h),

            // اسم الملعب قابل للنقر
            // بعد:
            if ((league.stadium?.name ?? '').isNotEmpty)
              InkWell(
                onTap: (league.stadiumId != null && onStadiumTap != null)
                    ? () => onStadiumTap!(league.stadiumId!)
                    : null,
                child: _IconTextSimple(
                  icon: Icons.stadium_outlined,
                  text: league.stadium!.name,
                  textStyle: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Poppins',
                    fontSize: 12.5.sp,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final bool isActive;
  final String label;
  const _StatusChip({required this.isActive, required this.label});

  @override
  Widget build(BuildContext context) {
    final bg = isActive ? Colors.green[100] : Colors.red[100];
    final fg = isActive ? Colors.green[800] : Colors.red[800];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: (fg ?? Colors.black).withOpacity(0.18), width: 0.7),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.emoji_events, size: 14.sp, color: fg),
          SizedBox(width: 6.w),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: fg,
              fontSize: 12.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const _InfoRow({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16.sp, color: Colors.black54),
        SizedBox(width: 4.w),
        Text(
          "$label:",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.5.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.textColor,
          ),
        ),
        SizedBox(width: 6.w),
        Expanded(
          child: Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.5.sp,
              color: AppColors.textColor.withOpacity(0.9),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class _IconTextSimple extends StatelessWidget {
  final IconData icon;
  final String text;
  final TextStyle? textStyle;

  const _IconTextSimple({required this.icon, required this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16.sp, color: Colors.black54),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textStyle ??
                TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.5.sp,
                  color: AppColors.textColor.withOpacity(0.9),
                ),
          ),
        ),
      ],
    );
  }
}
