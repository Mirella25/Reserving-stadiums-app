import 'package:reserving_stadiums_app/core/result/result.dart';

import '../entities/league_entity.dart';
import '../repositories/leagues_repository.dart';

class GetLeaguesUseCase {
  final LeaguesRepository repository;
  GetLeaguesUseCase(this.repository);

  Future<Result<List<LeagueEntity>>> call() {
    return repository.getAllLeagues();
  }
}
