// lib/features/leagues/presentation/pages/leagues_details.dart
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/dependency_injection/injections.dart';
import '../../../stadium_details/presentation/bloc/player/facilities_bloc/facilities_bloc.dart';
import '../../../stadium_details/presentation/bloc/player/facilities_bloc/facilities_event.dart';
import '../../../teams/presentation/bloc/get_all_teams_bloc/teams_bloc.dart';
import '../../../teams/presentation/bloc/get_all_teams_bloc/teams_state.dart';
import '../../domain/entities/league_entity.dart';
import '../../../stadium_details/presentation/pages/player/stadium_details_page.dart';
import '../bloc/leagues_bloc.dart';
import '../bloc/leagues_event.dart';
import '../bloc/leagues_state.dart';

// ⬇️ أضفنا شريط الفرق
import '../widgets/league_teams_strip.dart';

class LeagueDetailsPage extends StatelessWidget {
  final LeagueEntity league;
  final String? stadiumName;
  final int? myTeamId;
  const LeagueDetailsPage({
    super.key,
    required this.league,
    this.stadiumName,
    this.myTeamId,
  });

  String _fmtDate(DateTime? d) {
    if (d == null) return '—';
    final dt = d.toLocal();
    final y = dt.year.toString().padLeft(4, '0');
    final m = dt.month.toString().padLeft(2, '0');
    final day = dt.day.toString().padLeft(2, '0');
    return '$y-$m-$day';
  }

  bool get _isActive => (league.status ?? '').toLowerCase() == 'active';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 12.h),
          child: SizedBox(
            height: 48.h,
            width: double.infinity,
            child: BlocBuilder<TeamsBloc, TeamsState>(
              builder: (context, tState) {
                final isTeamsLoading = (tState.loading == true);
                final teamId = tState.myTeam?.id ??
                    ((tState.teams?.isNotEmpty ?? false) ? tState.teams!.first.id : null);

                final canJoin = _isActive && !isTeamsLoading && teamId != null;

                return BlocListener<LeaguesBloc, LeaguesState>(
                  listener: (context, lState) {
                    if (lState.joinSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Join request sent for "${league.name}"',
                            style: const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: AppColors.primaryColor,
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(12.r),
                        ),
                      );
                    } else if (lState.errorMessage != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            lState.errorMessage!,
                            style: const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.red,
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(12.r),
                        ),
                      );
                    }
                  },
                  child: ElevatedButton.icon(
                    onPressed: canJoin
                        ? () {
                      context.read<LeaguesBloc>().add(
                        JoinLeagueAsTeam(
                          teamId: teamId!,
                          leagueId: league.id,
                        ),
                      );
                    }
                        : null,
                    icon: const Icon(Icons.how_to_reg),
                    label: Text(
                      !_isActive
                          ? 'Unavailable'
                          : isTeamsLoading
                          ? 'Loading teams...'
                          : (teamId == null ? 'Select/Create team' : 'Request to join'),
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.5.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: canJoin ? AppColors.primaryColor : Colors.grey,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),

      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _Header(league: league, isActive: _isActive)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 16.h),
              child: Column(
                children: [
                  _SectionCard(
                    title: 'Overview',
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (league.stadiumId != null)
                              ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => MultiBlocProvider(
                                  providers: [
                                    BlocProvider(
                                      create: (_) => getIt<FacilitiesBloc>()
                                        ..add(LoadFacilitiesEvent(league.stadium!.id)),
                                    ),
                                  ],
                                  child: StadiumDetailsPage(
                                    stadium: league.stadium!,
                                  ),
                                ),
                              ),
                            );
                          }
                              : null,
                          child: _Tile(
                            icon: Icons.stadium_outlined,
                            label: 'Stadium',
                            value: (stadiumName?.trim().isNotEmpty ?? false)
                                ? stadiumName!
                                : (league.stadium?.name ?? 'Unknown stadium'),
                            valueStyle: TextStyle(
                              decoration: (league.stadiumId != null)
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              color: (league.stadiumId != null)
                                  ? AppColors.primaryColor
                                  : AppColors.textColor,
                            ),
                          ),
                        ),
                        _Divider(),
                        _Tile(
                          icon: Icons.sports_soccer,
                          label: 'Sport',
                          value: league.sportName ?? '—',
                        ),
                        _Divider(),
                        _Tile(
                          icon: Icons.calendar_today_outlined,
                          label: 'Start date',
                          value: _fmtDate(league.startDate),
                        ),
                        _Divider(),
                        _Tile(
                          icon: Icons.calendar_month_outlined,
                          label: 'End date',
                          value: _fmtDate(league.endDate),
                        ),
                        _Divider(),
                        _Tile(
                          icon: Icons.price_change_outlined,
                          label: 'Price',
                          value: (league.price ?? '').isNotEmpty
                              ? '${league.price} SAR'
                              : 'Free',
                          wrapValue: true,
                          valueStyle: TextStyle(
                            fontFamily: 'Lora',
                            fontSize: 14.sp,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        if ((league.prize ?? '').isNotEmpty) ...[
                          _Divider(),
                          _Tile(
                            icon: Icons.military_tech_outlined,
                            label: 'Prize',
                            value: league.prize!,
                            wrapValue: true,
                            valueStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13.5.sp,
                              height: 1.35,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  _SectionCard(
                    title: 'Info',
                    child: (league.description == null || league.description!.isEmpty)
                        ? Text(
                      'No description',
                      style: TextStyle(fontSize: 12.5.sp, color: Colors.black54),
                    )
                        : _Tile(
                      icon: Icons.description_outlined,
                      label: 'Description',
                      value: league.description!,
                      wrapValue: true,
                      valueStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13.5.sp,
                        height: 1.35,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),

                  // ⬇️ كرت الفرق المشاركة
                  _SectionCard(
                    title: 'Teams',
                    child: LeagueTeamsStrip(
                      leagueId: league.id,
                      maxToShow: 6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* ========================== UI Parts ========================== */

class _Header extends StatelessWidget {
  final LeagueEntity league;
  final bool isActive;
  const _Header({required this.league, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primaryColor.withOpacity(0.22),
            AppColors.primaryColor.withOpacity(0.06),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(28.r)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -30.w,
            top: -20.h,
            child: Transform.rotate(
              angle: -math.pi / 10,
              child: Icon(
                Icons.emoji_events,
                size: 180.sp,
                color: AppColors.primaryColor.withOpacity(0.12),
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.r),
                child: CircleAvatar(
                  radius: 18.r,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_new,
                        size: 18.sp, color: AppColors.textColor),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 16.w,
            right: 16.w,
            bottom: 18.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    league.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w800,
                      color: AppColors.textColor,
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                _StatusChip(
                  label: isActive ? 'Active' : (league.status ?? '—'),
                  isActive: isActive,
                ),
              ],
            ),
          ),
        ],
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
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20.r),
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
              fontSize: 12.5.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final Widget child;
  const _SectionCard({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.borderColor, width: 0.8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 15.sp,
              fontWeight: FontWeight.w800,
              color: AppColors.textColor,
            ),
          ),
          SizedBox(height: 10.h),
          child,
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final TextStyle? valueStyle;
  final bool wrapValue;

  const _Tile({
    required this.icon,
    required this.label,
    required this.value,
    this.valueStyle,
    this.wrapValue = false,
  });

  @override
  Widget build(BuildContext context) {
    final valueText = Text(
      value,
      softWrap: wrapValue,
      overflow: wrapValue ? TextOverflow.visible : TextOverflow.ellipsis,
      maxLines: wrapValue ? null : 1,
      textAlign: TextAlign.right,
      style: valueStyle ??
          TextStyle(
            fontFamily: 'Poppins',
            fontSize: 13.sp,
            color: AppColors.textColor.withOpacity(0.9),
          ),
    );

    return Row(
      crossAxisAlignment: wrapValue ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 18.sp, color: Colors.black54),
        SizedBox(width: 10.w),
        Expanded(
          flex: 4,
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 13.sp,
              color: AppColors.textColor.withOpacity(0.9),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(flex: 6, child: valueText),
      ],
    );
  }
}

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Divider(
        height: 1,
        color: AppColors.borderColor.withOpacity(0.6),
      ),
    );
  }
}
