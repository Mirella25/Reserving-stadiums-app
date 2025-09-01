import 'package:meta/meta.dart';

@immutable
abstract class LeaguesEvent {
  const LeaguesEvent();
}

class FetchLeagues extends LeaguesEvent {
  const FetchLeagues();
}

class RefreshLeagues extends LeaguesEvent {
  const RefreshLeagues();
}
class JoinLeagueAsTeam extends LeaguesEvent {
  final int teamId;
  final int leagueId;

  const JoinLeagueAsTeam({required this.teamId, required this.leagueId});
}
