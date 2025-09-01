// lib/features/leagues/presentation/pages/league_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/features/teams/presentation/bloc/get_all_teams_bloc/teams_event.dart';

import '../../../../core/dependency_injection/injections.dart';
import '../../../teams/presentation/bloc/get_all_teams_bloc/teams_bloc.dart';
import '../../domain/entities/league_entity.dart';
import '../bloc/leagues_bloc.dart';
import '../bloc/leagues_event.dart';
import '../bloc/leagues_state.dart';

import '../widgets/leagues_shimmer.dart';
import 'leagues_details.dart';

class LeaguesPage extends StatelessWidget {
  const LeaguesPage({super.key});

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
    return BlocProvider<LeaguesBloc>(
      // ✅ أهم تعديل: استخدمنا getIt بدل Provider.of<GetLeaguesUseCase>()
      create: (_) => getIt<LeaguesBloc>()..add(const FetchLeagues()),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: .6,
          title: Text(
            "Leagues",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor,
            ),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<LeaguesBloc, LeaguesState>(
          builder: (context, state) {
            if (state.isLoading && state.leagues!.isEmpty) {
              return const LeaguesListShimmer(itemCount: 6);
            }

            if (state.errorMessage != null && state.leagues!.isEmpty) {
              return _ErrorView(
                message: state.errorMessage!,
                onRetry: () =>
                    context.read<LeaguesBloc>().add(const FetchLeagues()),
              );
            }

            if (state.leagues!.isEmpty) {
              return _EmptyView(
                onRefresh: () =>
                    context.read<LeaguesBloc>().add(const FetchLeagues()),
              );
            }

            return RefreshIndicator(
              onRefresh: () async =>
                  context.read<LeaguesBloc>().add(const RefreshLeagues()),
              child: ListView.separated(
                padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 16.h),
                itemCount: state.leagues!.length,
                separatorBuilder: (_, __) => SizedBox(height: 14.h),
                itemBuilder: (context, index) {
                  final LeagueEntity league = state.leagues![index];
                  final isActive =
                      (league.status ?? '').toLowerCase() == 'active';

                  return InkWell(
                    borderRadius: BorderRadius.circular(20.r),
                    onTap: () {
                      final leaguesBloc = context.read<LeaguesBloc>();

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => MultiBlocProvider(
                            providers: [
                              BlocProvider.value(value: leaguesBloc),
                              BlocProvider<TeamsBloc>(
                                create: (_) {
                                  final b = getIt<TeamsBloc>();
                                  b.add(LoadTeams()); // تأكد يبلّش تحميل
                                  return b;
                                },
                              ),
                            ],
                            child: LeagueDetailsPage(league: league),
                          ),
                        ),
                      );
                    },



                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(
                          color: AppColors.borderColor,
                          width: .9,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            AppColors.primaryColor.withOpacity(.10),
                            Colors.white,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.06),
                            blurRadius: 12,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(14.r),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 12.w, top: 4.h),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryColor,
                            ),
                            width: 44.r,
                            height: 44.r,
                            child: const Icon(Icons.emoji_events,
                                color: Colors.white),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 6.h),
                                  decoration: BoxDecoration(
                                    color: isActive
                                        ? Colors.green[100]
                                        : Colors.red[100],
                                    borderRadius: BorderRadius.circular(14.r),
                                    border: Border.all(
                                      color: (isActive
                                          ? Colors.green[800]
                                          : Colors.red[800])!
                                          .withOpacity(.18),
                                      width: .7,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.emoji_events,
                                          size: 14.sp,
                                          color: isActive
                                              ? Colors.green[800]
                                              : Colors.red[800]),
                                      SizedBox(width: 6.w),
                                      Text(
                                        isActive
                                            ? "Active"
                                            : (league.status ?? '—'),
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w800,
                                          fontSize: 12.sp,
                                          color: isActive
                                              ? Colors.green[800]
                                              : Colors.red[800],
                                        ),
                                      ),
                                    ],
                                  ),
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
                                if ((league.sportName ?? '').isNotEmpty) ...[
                                  SizedBox(height: 2.h),
                                  Text(
                                    league.sportName!,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.sp,
                                      color: AppColors.textColor
                                          .withOpacity(0.7),
                                    ),
                                  ),
                                ],
                                SizedBox(height: 8.h),
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_today_outlined,
                                        size: 16, color: Colors.black54),
                                    SizedBox(width: 6.w),
                                    Expanded(
                                      child: Text(
                                        "Start: ${_fmtDate(league.startDate)}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.5.sp,
                                          color: AppColors.textColor
                                              .withOpacity(.9),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4.h),
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_month_outlined,
                                        size: 16, color: Colors.black54),
                                    SizedBox(width: 6.w),
                                    Expanded(
                                      child: Text(
                                        "End: ${_fmtDate(league.endDate)}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.5.sp,
                                          color: AppColors.textColor
                                              .withOpacity(.9),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6.h),
                                Row(
                                  children: [
                                    const Icon(Icons.price_change_outlined,
                                        size: 16, color: Colors.black54),
                                    SizedBox(width: 6.w),
                                    Text(
                                      (league.price ?? '').isNotEmpty
                                          ? "${league.price} SAR"
                                          : "Free",
                                      style: TextStyle(
                                        fontFamily: 'Lora',
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                if ((league.prize ?? '').isNotEmpty) ...[
                                  SizedBox(height: 6.h),
                                  Row(
                                    children: [
                                      Icon(Icons.military_tech_outlined,
                                          size: 16, color: Colors.amber[800]),
                                      SizedBox(width: 6.w),
                                      Expanded(
                                        child: Text(
                                          league.prize!,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12.5.sp,
                                            color: AppColors.textColor
                                                .withOpacity(.9),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                                SizedBox(height: 6.h),
                                Row(
                                  children: [
                                    const Icon(Icons.stadium_outlined,
                                        size: 16,
                                        color: AppColors.primaryColor),
                                    SizedBox(width: 6.w),
                                    Expanded(
                                      child: Text(
                                        (league.stadium?.name
                                            ?.trim()
                                            .isNotEmpty ??
                                            false)
                                            ? league.stadium!.name!
                                            : "Unknown stadium",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.5.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.textColor
                                              .withOpacity(.9),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.w, top: 12.h),
                            child: const Icon(Icons.chevron_right_rounded,
                                color: AppColors.primaryColor),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 42, color: Colors.redAccent),
            SizedBox(height: 12.h),
            Text(message, textAlign: TextAlign.center),
            SizedBox(height: 12.h),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  final VoidCallback onRefresh;

  const _EmptyView({required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.emoji_events_outlined,
                size: 42, color: AppColors.primaryColor),
            SizedBox(height: 12.h),
            const Text("No leagues available yet"),
            SizedBox(height: 12.h),
            OutlinedButton.icon(
              onPressed: onRefresh,
              icon: const Icon(Icons.refresh),
              label: const Text('Reload'),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.primaryColor,
                side: const BorderSide(color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
