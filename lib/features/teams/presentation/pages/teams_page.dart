// lib/features/teams/presentation/pages/teams_page.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/dependency_injection/injections.dart';
import '../../../../features/auth/data/datasources/auth_local_datasource.dart';

// Teams
import '../../../profile/presentation/widgets/profile_picker_sheet.dart';
import '../bloc/get_all_teams_bloc/teams_bloc.dart';
import '../bloc/get_all_teams_bloc/teams_event.dart';
import '../bloc/get_all_teams_bloc/teams_state.dart';

// Invite (player)
import '../../../invitations/presentation/bloc/player/invite_bloc.dart';
import '../../../invitations/presentation/bloc/player/send_invite_event.dart';
import '../../../invitations/presentation/bloc/player/send_invite_state.dart';

import '../widgets/count_badge.dart';
import '../widgets/empty_list.dart';
import '../widgets/empty_my_team.dart';
import '../widgets/error_card.dart';
import '../widgets/loading_skeleton.dart';
import '../widgets/my_team_card.dart';
import '../widgets/search_bar.dart';
import '../widgets/section_header.dart';
import '../widgets/team_tile.dart';
import 'create_team_page.dart';
import 'team_details_page.dart';

class TeamsPage extends StatefulWidget {
  const TeamsPage({super.key});

  @override
  State<TeamsPage> createState() => _TeamsPageState();
}

class _TeamsPageState extends State<TeamsPage> {
  String _query = '';
  int? _userId;

  Future<void> _precacheTeamLogos(BuildContext context, List<String> urls) async {
    for (final u in urls) {
      if (u.isEmpty) continue;
      try {
        await precacheImage(CachedNetworkImageProvider(u), context);
      } catch (_) {}
    }
  }

  Future<void> _loadUserId() async {
    final id = await getIt<AuthLocalDataSource>().getCachedUserId();
    if (mounted) setState(() => _userId = id);
  }

  @override
  void initState() {
    super.initState();
    _loadUserId();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<TeamsBloc>()..add(LoadTeams())),
        BlocProvider(create: (_) => getIt<InviteBloc>()),
      ],
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: MultiBlocListener(
          listeners: [
            BlocListener<TeamsBloc, TeamsState>(
              listener: (context, state) {
                if (!state.loading && state.teams.isNotEmpty) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    _precacheTeamLogos(
                      context,
                      state.teams.map((t) => t.logoUrl ?? '').toList(),
                    );
                  });
                }
              },
            ),
            BlocListener<InviteBloc, InviteState>(
              listenWhen: (p, n) =>
              p.isSubmitting != n.isSubmitting || p.error != n.error || p.data != n.data,
              listener: (context, state) {
                if (state.isSubmitting) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Sending invite...'),
                      duration: const Duration(milliseconds: 800),
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.all(12.r),
                    ),
                  );
                } else if (state.error != null) {
                  CustomSnackbar.show(context, message: "Something happened when sending",isError: true);
                } else if (state.data != null) {
                  CustomSnackbar.show(context, message: "Invitation sent successfully",isError: false);
                  context.read<InviteBloc>().add(const ResetInviteEvent());
                }
              },
            ),
          ],
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: AppColors.backgroundColor,
                  elevation: 0,
                  titleSpacing: 16.w,
                  title: Text(
                    'Teams',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                      fontSize: 20.sp,
                      color: AppColors.textColor,
                    ),
                  ),
                  actions: [
                    Builder(
                      builder: (ctx) => IconButton(
                        onPressed: () => ctx.read<TeamsBloc>().add(RefreshTeams()),
                        icon: const Icon(Icons.refresh_rounded),
                        color: AppColors.textColor,
                      ),
                    ),
                    SizedBox(width: 4.w),
                  ],
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(64.h),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 10.h),
                      child: TeamsSearchBar(
                        hint: 'Search teams…',
                        onChanged: (v) => setState(() => _query = v.trim()),
                      ),
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child: BlocBuilder<TeamsBloc, TeamsState>(
                    builder: (context, state) {
                      if (state.loading) return const TeamsLoadingSkeleton();

                      if (state.error != null) {
                        return Padding(
                          padding: EdgeInsets.all(16.w),
                          child: TeamsErrorCard(
                            message: state.error!,
                            onRetry: () => context.read<TeamsBloc>().add(LoadTeams()),
                          ),
                        );
                      }

                      final myTeam = state.myTeam;
                      final myId = state.myTeam?.id;
                      final teams = state.teams
                          .where((t) => myId == null || t.id != myId)
                          .where((t) => _query.isEmpty
                          ? true
                          : t.name.toLowerCase().contains(_query.toLowerCase()))
                          .toList();

                      return Padding(
                        padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 16.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionHeader(title: 'My Team'),
                            SizedBox(height: 10.h),
                            if (myTeam != null)
                              MyTeamCard(
                                isCaptain: myTeam.captain?.id == _userId,
                                team: myTeam,
                                onManage: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => TeamDetailsPage(teamId: myTeam.id),
                                    ),
                                  );
                                },
                                onInvite: () async {
                                  final receiverId = await showProfilePickerSheet(context); // يرجّع userId
                                  if (receiverId == null) return;
                                  context.read<InviteBloc>().add(SendInviteEvent(
                                    teamId: myTeam.id,
                                    receiverId: receiverId,
                                    isTeam: true,
                                  ));
                                },
                              )
                            else
                              EmptyMyTeam(onCreate: () async {
                                final userId = await getIt<AuthLocalDataSource>().getCachedUserId();
                                if (userId == null || !mounted) return;
                                await Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => CreateTeamPage(captainId: userId)),
                                );
                                if (!mounted) return;
                                context.read<TeamsBloc>().add(RefreshTeams());
                              }),
                            SizedBox(height: 22.h),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SectionHeader(title: 'All Teams'),
                                CountBadge(count: teams.length),
                              ],
                            ),
                            SizedBox(height: 12.h),

                            if (teams.isEmpty)
                              const EmptyList()
                            else
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: teams.length,
                                separatorBuilder: (_, __) => SizedBox(height: 10.h),
                                itemBuilder: (_, i) => TeamTile(
                                  team: teams[i],
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => TeamDetailsPage(teamId: teams[i].id),
                                      ),
                                    );
                                  },
                                ),
                              ),

                            SizedBox(height: 80.h),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// BottomSheet بسيط لجمع receiverId و isTeam ثم إرسال الحدث
void _openInviteSheet(BuildContext context, int teamId) async {
  final ctrl = TextEditingController();
  bool isTeam = true;

  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
    builder: (ctx) {
      return Padding(
        padding: EdgeInsets.only(
          left: 16.w, right: 16.w, top: 12.h,
          bottom: MediaQuery.of(ctx).viewInsets.bottom + 16.h,
        ),
        child: StatefulBuilder(
          builder: (ctx, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 48.w, height: 5.h, margin: EdgeInsets.only(bottom: 12.h),
                  decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(3.r)),
                ),
                Text('Invite to Team #$teamId', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700)),
                SizedBox(height: 12.h),
                TextField(
                  controller: ctrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Receiver User ID',
                    hintText: 'e.g. 3',
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
                  ),
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Invite as Team', style: TextStyle(fontSize: 14.sp)),
                  value: isTeam,
                  onChanged: (v) => setState(() => isTeam = v),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      final id = int.tryParse(ctrl.text.trim());
                      if (id == null) {
                        ScaffoldMessenger.of(ctx).showSnackBar(
                          SnackBar(
                            content: const Text('Enter a valid numeric user ID'),
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.all(12.r),
                          ),
                        );
                        return;
                      }
                      Navigator.of(ctx).pop();
                      context.read<InviteBloc>().add(SendInviteEvent(
                        teamId: teamId,
                        receiverId: id,
                        isTeam: isTeam,
                      ));
                    },
                    child: Text('Send Invite', style: TextStyle(fontSize: 14.sp)),
                  ),
                ),
              ],
            );
          },
        ),
      );
    },
  );
}
