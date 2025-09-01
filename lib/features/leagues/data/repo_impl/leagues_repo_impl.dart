import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/league_invitation_entity.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/league_team_entity.dart';
import '../../domain/entities/league_entity.dart';
import '../../domain/repositories/leagues_repository.dart';
import '../datasources/leagues_remote_datasources.dart';

class LeaguesRepositoryImpl implements LeaguesRepository {
  final LeaguesRemoteDataSource remote;

  LeaguesRepositoryImpl(this.remote);

  @override
  Future<Result<List<LeagueEntity>>> getAllLeagues() {
    return remote.getAllLeagues();
  }

  @override
  Future<Result<LeagueInvitationEntity>> requestJoinLeague({required int teamId, required int leagueId, required bool
  isTeam}) {
  return remote.requestJoinLeague(teamId: teamId, leagueId: leagueId, isTeam: isTeam);
  }

  @override
  Future<Result<List<LeagueTeamEntity>>> fetchLeagueTeams(int leagueId) {
   return remote.fetchLeagueTeams(leagueId);
  }
}
