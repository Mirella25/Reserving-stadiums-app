import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/repositories/stadium_owner/league_repository.dart';

class UpdateLeagueUsecase {
  final LeagueRepository repository;
  UpdateLeagueUsecase(this.repository);
  Future<Result<LeagueEntity>> execute(
      {required LeagueEntity league, required int id}) {
    return repository.updateLeague(league: league, id: id);
  }
}
