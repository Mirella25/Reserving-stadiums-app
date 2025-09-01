import '../../../domain/entities/league_team_entity.dart';

class LeagueTeamsState {
  final bool loading;
  final List<LeagueTeamEntity> teams;
  final String? error;

  const LeagueTeamsState({this.loading=false, this.teams=const [], this.error});

  LeagueTeamsState copyWith({bool? loading, List<LeagueTeamEntity>? teams, String? error}) =>
      LeagueTeamsState(
        loading: loading ?? this.loading,
        teams: teams ?? this.teams,
        error: error,
      );

  factory LeagueTeamsState.initial() => const LeagueTeamsState();
}
