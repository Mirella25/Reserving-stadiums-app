import 'package:reserving_stadiums_app/core/result/result.dart';
import '../entities/league_team_entity.dart';
import '../repositories/leagues_repository.dart';

class GetLeagueTeamsUseCase {
  final LeaguesRepository repo;
  GetLeagueTeamsUseCase(this.repo);

  Future<Result<List<LeagueTeamEntity>>> call(int leagueId) {
    return repo.fetchLeagueTeams(leagueId);
  }
}
