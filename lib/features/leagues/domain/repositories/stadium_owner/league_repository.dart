import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';

abstract class LeagueRepository {
  Future<Result<LeagueEntity>> createLeague({required LeagueEntity league});
  Future<Result<List<LeagueEntity>>> getAllLeagues();
  Future<Result<void>> deleteLeague(int id);
  Future<Result<LeagueEntity>> updateLeague(
      {required LeagueEntity league, required int id});
}
