import 'package:reserving_stadiums_app/core/result/result.dart';
import '../entities/league_entity.dart';
import '../entities/league_invitation_entity.dart';
import '../entities/league_team_entity.dart';

abstract class LeaguesRepository {
  Future<Result<List<LeagueEntity>>> getAllLeagues();
  Future<Result<LeagueInvitationEntity>> requestJoinLeague({
    required int teamId,
    required int leagueId,
    required bool isTeam,
  });
  Future<Result<List<LeagueTeamEntity>>> fetchLeagueTeams(int leagueId);
}
