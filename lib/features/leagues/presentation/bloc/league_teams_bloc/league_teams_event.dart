abstract class LeagueTeamsEvent {}
class LoadLeagueTeams extends LeagueTeamsEvent {
  final int leagueId;
  LoadLeagueTeams(this.leagueId);
}
class RefreshLeagueTeams extends LeagueTeamsEvent {
  final int leagueId;
  RefreshLeagueTeams(this.leagueId);
}
