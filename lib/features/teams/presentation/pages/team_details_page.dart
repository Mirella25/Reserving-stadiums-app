// lib/features/teams/presentation/pages/team_details_page.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../features/auth/data/datasources/auth_local_datasource.dart';
import '../../../profile/domain/entities/profile_details_entity.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import '../../../profile/presentation/pages/show_profile.dart';
import '../../../sport/domain/entities/sport_entity.dart';
import '../../../sport/presentation/bloc/sport_bloc.dart';
import '../../../sport/presentation/bloc/sport_event.dart';
import '../../../sport/presentation/bloc/sport_state.dart';
import '../../data/models/request/update_team_request.dart';
import '../../domain/entities/team_details_entity.dart';
import '../bloc/get_team_details_bloc/team_details_bloc.dart';
import '../bloc/get_team_details_bloc/team_details_event.dart';
import '../bloc/get_team_details_bloc/team_details_state.dart';

class TeamDetailsPage extends StatefulWidget {
  final int teamId;
  const TeamDetailsPage({super.key, required this.teamId});

  @override
  State<TeamDetailsPage> createState() => _TeamDetailsPageState();
}

class _TeamDetailsPageState extends State<TeamDetailsPage> {
  void _openPlayerProfile(BuildContext context, ProfileDetailsEntity p) {
    final pid = p.id;
    if (pid == null) return;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => getIt<ProfileBloc>()..add(LoadProfileDetails(pid)),
          child: ProfilePage(
            profileId: pid,
            storageBaseUrl: AppConstants.mediaBaseUrl,
            canEdit: false,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TeamDetailsBloc>()..add(LoadTeamDetails(widget.teamId)),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,

        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text('Team Details',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700)),
          actions: [
            // أظهر الأيقونات للكابتن فقط
            BlocBuilder<TeamDetailsBloc, TeamDetailsState>(
              buildWhen: (p, c) => p.data?.captainUserId != c.data?.captainUserId,
              builder: (context, s) {
                final d = s.data; // ممكن تكون null بأول تحميل
                return FutureBuilder<int?>(
                  future: getIt<AuthLocalDataSource>().getCachedUserId(),
                  builder: (_, snap) {
                    final isCaptain = (d != null && snap.data != null && d.captainUserId == snap.data);

                    void _notCaptainMsg() {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Only the captain can manage the team'),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(12.r),
                        ),
                      );
                    }

                    return Row(
                      children: [
                        IconButton(
                          tooltip: 'Edit',
                          icon: const Icon(Icons.edit),
                          onPressed: isCaptain ? () => _openEditSheet(context, widget.teamId) : _notCaptainMsg,
                        ),
                        IconButton(
                          tooltip: 'Delete',
                          icon: const Icon(Icons.delete_outline),
                          onPressed: isCaptain ? () => _confirmDelete(context, widget.teamId) : _notCaptainMsg,
                        ),
                        SizedBox(width: 4.w),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),

        body: BlocBuilder<TeamDetailsBloc, TeamDetailsState>(
          builder: (context, s) {
            if (s.loading) return const _Skeleton();

            if (s.error != null) {
              return _ErrorView(
                msg: s.error!,
                onRetry: () => context.read<TeamDetailsBloc>().add(LoadTeamDetails(widget.teamId)),
              );
            }

            final d = s.data;
            if (d == null) return const _Skeleton();

            return RefreshIndicator(
              color: AppColors.primaryColor,
              onRefresh: () async =>
                  context.read<TeamDetailsBloc>().add(LoadTeamDetails(widget.teamId)),
              child: ListView(
                padding: EdgeInsets.all(16.w),
                children: [
                  _HeaderCard(d: d),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Players',
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w700)),
                      _CountBadge(count: d.profiles.length),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  if (d.profiles.isEmpty)
                    _EmptyCard(
                      icon: Icons.group_off_rounded,
                      text: 'No players yet.',
                    )
                  else
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: d.profiles.length,
                      separatorBuilder: (_, __) => SizedBox(height: 8.h),
                      itemBuilder: (_, i) {
                        final p = d.profiles[i];
                        final isCap = (p.userId ?? -1) == d.captainUserId;
                        return InkWell(
                          borderRadius: BorderRadius.circular(14.r),
                          onTap: () => _openPlayerProfile(context, p),
                          child: Container(
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14.r),
                              border: Border.all(color: AppColors.borderColor.withOpacity(.45)),
                            ),
                            child: Row(
                              children: [
                                _Avatar(
                                  url: _fullUrl(p.avatar),
                                  fallback: (p.firstName ?? '?'),
                                  size: 56.w,
                                ),
                                SizedBox(width: 12.w),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '${p.firstName ?? ''} ${p.lastName ?? ''}'.trim(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.5.sp,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          if (isCap)
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                                              decoration: BoxDecoration(
                                                color: AppColors.primaryColor.withOpacity(.12),
                                                borderRadius: BorderRadius.circular(8.r),
                                              ),
                                              child: Text(
                                                'C',
                                                style: TextStyle(
                                                  color: AppColors.primaryColor,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      SizedBox(height: 4.h),
                                      Row(
                                        children: [
                                          Icon(Icons.sports_soccer, size: 14.sp, color: Colors.grey[700]),
                                          SizedBox(width: 4.w),
                                          Flexible(
                                            child: Text(
                                              p.positionsPlayed ?? '-',
                                              style: TextStyle(fontSize: 12.sp, color: Colors.grey[700]),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          SizedBox(width: 12.w),
                                          Icon(Icons.timelapse, size: 14.sp, color: Colors.grey[700]),
                                          SizedBox(width: 4.w),
                                          Text(
                                            '${p.yearsOfExperience ?? 0} yrs',
                                            style: TextStyle(fontSize: 12.sp, color: Colors.grey[700]),
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
                      },
                    ),
                  SizedBox(height: 80.h),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  String? _fullUrl(String? v) {
    if (v == null || v.isEmpty) return null;
    return v.startsWith('http') ? v : '${AppConstants.mediaBaseUrl}/storage/$v';
  }

// ====== Edit Sheet (نسخة ثابتة بدون Overflow) ======
  void _openEditSheet(BuildContext context, int teamId) {
    final parentBloc = context.read<TeamDetailsBloc>();
    final team = parentBloc.state.data;

    final nameCtrl = TextEditingController(text: team?.name ?? '');
    String? selectedSportId; // نحددها بعد ما تيجي الرياضات
    int? selectedCaptainId = team?.captainUserId;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent, // حتى تبقى الخلفية ظاهرة ومعتمة
      barrierColor: Colors.black54,
      builder: (sheetCtx) {
        return BlocProvider.value(
          value: parentBloc,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => getIt<SportBloc>()..add(LoadSportsEvent())),
            ],
            child: SafeArea(
              top: false,
              child: DraggableScrollableSheet(
                expand: false,
                minChildSize: 0.40,
                initialChildSize: 0.70,
                maxChildSize: 0.95,
                builder: (ctx, scrollController) {
                  final bottomInset = MediaQuery.of(ctx).viewInsets.bottom;

                  return Material(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
                    child: ListView(
                      controller: scrollController, // مهم للسحب
                      padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 16.h + bottomInset),
                      children: [
                        // handle
                        Center(
                          child: Container(
                            width: 42.w,
                            height: 5.h,
                            margin: EdgeInsets.only(bottom: 12.h),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),

                        _SheetTitle(title: 'Edit team', subtitle: team?.name ?? ''),
                        SizedBox(height: 12.h),

                        // Team name
                        TextField(
                          controller: nameCtrl,
                          decoration: InputDecoration(
                            labelText: 'Team name',
                            prefixIcon: const Icon(Icons.badge_outlined),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(color: AppColors.borderColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(color: AppColors.borderColor.withOpacity(.6)),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.h),

                        // Sport
                        BlocBuilder<SportBloc, SportState>(
                          builder: (ctx, s) {
                            if (s is SportLoading) {
                              return const LinearProgressIndicator(minHeight: 2);
                            }
                            if (s is! SportLoaded) return const SizedBox.shrink();

                            // Preselect by name safely (قيمة لازم تكون من items)
                            selectedSportId ??= () {
                              if (team?.sportName == null) return null;
                              final idx = s.sports.indexWhere(
                                    (sp) => sp.name.toLowerCase() == team!.sportName.toLowerCase(),
                              );
                              if (idx == -1) return null;
                              return s.sports[idx].id.toString();
                            }();

                            final items = s.sports
                                .map((sp) => DropdownMenuItem<String>(
                              value: sp.id.toString(),
                              child: Text(sp.name, overflow: TextOverflow.ellipsis),
                            ))
                                .toList();

                            final safeValue = items.any((it) => it.value == selectedSportId)
                                ? selectedSportId
                                : null;

                            return DropdownButtonFormField<String>(
                              value: safeValue,
                              items: items,
                              onChanged: (val) => setState(() => selectedSportId = val),
                              decoration: const InputDecoration(labelText: 'Sport'),
                            );
                          },
                        ),

                        SizedBox(height: 12.h),

                        // Captain
                        if (team != null)
                          DropdownButtonFormField<int>(
                            value: selectedCaptainId ?? team.captainUserId,
                            items: team.profiles
                                .where((p) => p.userId != null)
                                .map(
                                  (p) => DropdownMenuItem<int>(
                                value: p.userId,
                                // مهم: بدون Expanded/Flexible داخل DropdownMenuItem
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CircleAvatar(
                                      radius: 12.r,
                                      backgroundColor: Colors.grey.shade300,
                                      child: Text(
                                        ((p.firstName ?? '?').isNotEmpty ? p.firstName![0] : '?')
                                            .toUpperCase(),
                                        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(width: 8.w),
                                    // نقيّد حجم الاسم حتى ما يطلب مساحة لا نهائية
                                    ConstrainedBox(
                                      constraints: BoxConstraints(maxWidth: 200.w),
                                      child: Text(
                                        '${p.firstName ?? ''} ${p.lastName ?? ''}'.trim(),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    if ((p.userId ?? -1) == team.captainUserId) ...[
                                      SizedBox(width: 6.w),
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryColor.withOpacity(.12),
                                          borderRadius: BorderRadius.circular(8.r),
                                        ),
                                        child: Text(
                                          'C',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10.sp,
                                            color: AppColors.primaryColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            )
                                .toList(),
                            onChanged: (v) => setState(() => selectedCaptainId = v),
                            decoration: InputDecoration(
                              labelText: 'Captain',
                              prefixIcon: const Icon(Icons.military_tech_outlined),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.r),
                                borderSide: BorderSide(color: AppColors.borderColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.r),
                                borderSide: BorderSide(color: AppColors.borderColor.withOpacity(.6)),
                              ),
                            ),
                          ),

                        SizedBox(height: 18.h),

                        // Actions
                        BlocBuilder<TeamDetailsBloc, TeamDetailsState>(
                          buildWhen: (p, c) => p.updating != c.updating,
                          builder: (ctx, st2) {
                            return Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton.icon(
                                    onPressed: st2.updating
                                        ? null
                                        : () {
                                      final name = nameCtrl.text.trim();
                                      final sportId = selectedSportId != null
                                          ? int.tryParse(selectedSportId!)
                                          : null;

                                      ctx.read<TeamDetailsBloc>().add(
                                        UpdateTeamEvent(
                                          teamId: teamId,
                                          req: UpdateTeamRequest(
                                            name: name.isEmpty ? null : name,
                                            sportId: sportId,
                                            captainId: selectedCaptainId,
                                          ),
                                        ),
                                      );

                                      // نغلق الشيت ونطلع السناك بار من سياق الصفحة الأصلية
                                      Navigator.pop(sheetCtx);
                                      CustomSnackbar.show(context, message: "${st2.updating ? 'Saving...' : 'Saved'}",isError: false);
                                    },
                                    icon: st2.updating
                                        ? const SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                                    )
                                        : const Icon(Icons.save_outlined),
                                    label: Text(st2.updating ? 'Saving...' : 'Save'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primaryColor,
                                      foregroundColor: Colors.white,
                                      padding: EdgeInsets.symmetric(vertical: 12.h),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                                      elevation: 0,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Expanded(
                                  child: OutlinedButton.icon(
                                    onPressed: st2.updating ? null : () => Navigator.pop(sheetCtx),
                                    icon: const Icon(Icons.close,color: AppColors.primaryColor),
                                    label: const Text('Cancel',style: TextStyle(color: AppColors.primaryColor),),
                                    style: OutlinedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(vertical: 12.h),
                                      side: BorderSide(color: AppColors.borderColor),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }


  /// يحدد إن كان التحديث انتهى الآن (انتقال من updating=true إلى false بدون خطأ)
  bool prevUpdFinished({required TeamDetailsState prev, required TeamDetailsState curr}) {
    final finished = prev.updating && !curr.updating;
    final ok = curr.error == null;
    return finished && ok;
  }


}

  // ====== Delete Dialog ======
  void _confirmDelete(BuildContext context, int teamId) {
    showDialog(
      context: context,
      builder: (dialogCtx) {
        // ⬅️ مرّر نفس البلوك للـ dialog
        return BlocProvider.value(
          value: context.read<TeamDetailsBloc>(),
          child: BlocConsumer<TeamDetailsBloc, TeamDetailsState>(
            listener: (ctx, st) {
              if (st.deleted) {
                Navigator.pop(ctx);      // close dialog
                Navigator.pop(context);  // pop details page
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Team deleted')));
              } else if (st.error != null) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(st.error!)));
              }
            },
            builder: (ctx, st) {
              return AlertDialog(
                title: const Text('Delete team'),
                content: const Text('Are you sure you want to delete this team?'),
                actions: [
                  TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
                  TextButton(
                    onPressed: st.loading ? null : () => ctx.read<TeamDetailsBloc>().add(DeleteTeamEvent(teamId)),
                    child: st.loading ? const Text('Deleting...') : const Text('Delete'),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }



class _HeaderCard extends StatelessWidget {
  final TeamDetailsEntity d;
  const _HeaderCard({required this.d});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primaryColor.withOpacity(.12), Colors.white],
        ),
        border: Border.all(color: AppColors.primaryColor.withOpacity(.25)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 14.r,
            offset: Offset(0, 6.h),
          ),
        ],
      ),
      child: Row(
        children: [
          _Avatar(url: d.logoUrl, fallback: d.name, size: 62.w),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(d.name, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800)),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    Icon(Icons.emoji_events_outlined, size: 14.sp, color: Colors.grey[700]),
                    SizedBox(width: 6.w),
                    Flexible(
                      child: Text(
                        d.sportName,
                        style: TextStyle(fontSize: 12.5.sp, color: Colors.grey[700]),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                if (d.captainEmail != null) ...[
                  SizedBox(height: 6.h),
                  Row(
                    children: [
                      Icon(Icons.mail_outline_rounded, size: 14.sp, color: Colors.grey[700]),
                      SizedBox(width: 6.w),
                      Flexible(
                        child: Text(
                          d.captainEmail!,
                          style: TextStyle(fontSize: 12.sp, color: Colors.grey[700]),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  final String? url;
  final String fallback;
  final double size;
  const _Avatar({required this.url, required this.fallback, this.size = 56});

  @override
  Widget build(BuildContext context) {
    final initial = (fallback.isNotEmpty ? fallback[0] : '?').toUpperCase();
    return ClipRRect(
      borderRadius: BorderRadius.circular(14.r),
      child: Container(
        width: size,
        height: size,
        color: AppColors.borderColor.withOpacity(.25),
        child: (url != null && url!.isNotEmpty)
            ? CachedNetworkImage(
          imageUrl: url!,
          fit: BoxFit.cover,
          placeholder: (_, __) => Center(
            child: Icon(Icons.person, size: size * .5, color: Colors.grey),
          ),
          errorWidget: (_, __, ___) => Center(
            child: Text(
              initial,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: (size * .38).sp,
                color: AppColors.textColor,
              ),
            ),
          ),
        )
            : Center(
          child: Text(
            initial,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: (size * .38).sp,
              color: AppColors.textColor,
            ),
          ),
        ),
      ),
    );
  }
}

class _CountBadge extends StatelessWidget {
  final int count;
  const _CountBadge({required this.count});

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

class _EmptyCard extends StatelessWidget {
  final IconData icon;
  final String text;
  const _EmptyCard({required this.icon, required this.text});

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
          Icon(icon, color: Colors.grey[700]),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 13.sp, color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String msg;
  final VoidCallback onRetry;
  const _ErrorView({required this.msg, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.wifi_off_rounded, size: 44.sp, color: Colors.grey[700]),
            SizedBox(height: 10.h),
            Text(msg, textAlign: TextAlign.center, style: TextStyle(fontSize: 13.sp)),
            SizedBox(height: 12.h),
            SizedBox(
              height: 40.h,
              child: ElevatedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh_rounded),
                label: const Text('Retry'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Skeleton extends StatelessWidget {
  const _Skeleton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          Container(
            height: 96.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
          SizedBox(height: 12.h),
          ...List.generate(
            6,
                (_) => Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Container(
                height: 72.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.r),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class _SheetTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const _SheetTitle({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(.12),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: const Icon(Icons.tune_rounded),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800)),
              SizedBox(height: 2.h),
              Text(subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12.5.sp, color: Colors.black54)),
            ],
          ),
        ),
      ],
    );
  }
}

