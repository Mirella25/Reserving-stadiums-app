import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/repositories/stadium_owner/league_repository.dart';

class GetAllLeaguesUsecase {
  final LeagueRepository repository;
  GetAllLeaguesUsecase(this.repository);
  Future<Result<List<LeagueEntity>>> execute() {
    return repository.getAllLeagues();
  }
}
