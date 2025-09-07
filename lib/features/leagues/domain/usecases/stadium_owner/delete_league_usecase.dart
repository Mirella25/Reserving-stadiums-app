import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/repositories/stadium_owner/league_repository.dart';

class DeleteLeagueUsecase {
  final LeagueRepository repository;
  DeleteLeagueUsecase(this.repository);
  Future<Result<void>> execute(int id) {
    return repository.deleteLeague(id);
  }
}
