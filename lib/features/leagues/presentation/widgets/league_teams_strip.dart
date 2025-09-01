import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/dependency_injection/injections.dart';
import '../../domain/entities/league_team_entity.dart';
import '../bloc/league_teams_bloc/league_teams_bloc.dart';
import '../bloc/league_teams_bloc/league_teams_event.dart';
import '../bloc/league_teams_bloc/league_teams_state.dart';

class LeagueTeamsStrip extends StatelessWidget {
  final int leagueId;
  final int maxToShow;

  const LeagueTeamsStrip({
    Key? key,
    required this.leagueId,
    this.maxToShow = 3, // 👈 عرض 3 فرق فقط كـ preview
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LeagueTeamsBloc>()..add(LoadLeagueTeams(leagueId)),
      child: _Body(maxToShow: maxToShow, leagueId: leagueId),
    );
  }
}

class _Body extends StatelessWidget {
  final int leagueId;
  final int maxToShow;
  const _Body({Key? key, required this.leagueId, required this.maxToShow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColor = AppColors.textColor;

    return BlocBuilder<LeagueTeamsBloc, LeagueTeamsState>(
      builder: (context, state) {
        final teams = state.teams;
        final total = teams.length;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // العنوان + العدد + زر عرض الكل
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Participating teams ($total)',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: textColor,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => _openAllTeamsSheet(context, leagueId),
                  child: const Text('Show all',style: TextStyle(color: AppColors.primaryColor),),
                ),
              ],
            ),
            const SizedBox(height: 8),

            if (state.loading) ...[
              const _StripSkeleton(),
            ] else if (state.error != null) ...[
              Row(
                children: [
                  Expanded(
                    child: Text(
                      state.error!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                  IconButton(
                    onPressed: () => context.read<LeagueTeamsBloc>().add(LoadLeagueTeams(leagueId)),
                    icon: const Icon(Icons.refresh),
                    tooltip: 'Retry',
                  )
                ],
              ),
            ] else if (teams.isEmpty) ...[
              const Text('No teams yet.'),
            ] else ...[
              // 👇 عرض 3 فرق فقط كـ preview
              SizedBox(
                height: 72,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, i) => _TeamChip(team: teams[i]),
                  separatorBuilder: (_, __) => const SizedBox(width: 10),
                  itemCount: teams.length > maxToShow ? maxToShow : teams.length,
                ),
              ),
            ],
          ],
        );
      },
    );
  }

  void _openAllTeamsSheet(BuildContext context, int leagueId) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black54,
      builder: (ctx) {
        // نستخدم نفس البلوك الحالي
        return BlocProvider.value(
          value: context.read<LeagueTeamsBloc>(),
          child:  _AllTeamsSheet(leagueId: leagueId),
        );
      },
    );
  }
}

class _TeamChip extends StatelessWidget {
  final LeagueTeamEntity team;
  const _TeamChip({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = BorderSide(color: AppColors.borderColor.withOpacity(.6));

    return Container(
      width: 160,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border.fromBorderSide(border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade300,
            backgroundImage: (team.logoUrl?.isNotEmpty ?? false) ? NetworkImage(team.logoUrl!) : null,
            child: (team.logoUrl == null || team.logoUrl!.isEmpty)
                ? Text(
              team.name.isNotEmpty ? team.name[0].toUpperCase() : '?',
              style: const TextStyle(fontWeight: FontWeight.w800),
            )
                : null,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              team.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

class _StripSkeleton extends StatelessWidget {
  const _StripSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) => Container(
          width: 160,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemCount: 3,
      ),
    );
  }
}

class _AllTeamsSheet extends StatelessWidget {
  final int leagueId;
  const _AllTeamsSheet({Key? key, required this.leagueId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxH = MediaQuery.of(context).size.height * 0.9;
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return AnimatedPadding(
      duration: const Duration(milliseconds: 180),
      padding: EdgeInsets.only(bottom: bottomInset),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: maxH),
          child: Material(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
            child: SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // handle
                    Container(
                      width: 42,
                      height: 5,
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'All teams',
                            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                          ),
                        ),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),

                    Expanded(
                      child: BlocBuilder<LeagueTeamsBloc, LeagueTeamsState>(
                        builder: (context, state) {
                          if (state.loading) {
                            return const Center(child: CircularProgressIndicator());
                          }
                          if (state.error != null) {
                            return Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(state.error!, style: const TextStyle(color: Colors.red)),
                                  const SizedBox(height: 8),
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      context.read<LeagueTeamsBloc>().add(
                                        LoadLeagueTeams(leagueId), // 👈 استعمل leagueId هون
                                      );
                                    },
                                    icon: const Icon(Icons.refresh),
                                    label: const Text('Retry'),
                                  )
                                ],
                              ),
                            );
                          }

                          final teams = state.teams;
                          if (teams.isEmpty) {
                            return const Center(child: Text('No teams yet.'));
                          }

                          return GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 12,
                              childAspectRatio: 3.2,
                            ),
                            itemCount: teams.length,
                            itemBuilder: (_, i) => _TeamChip(team: teams[i]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
