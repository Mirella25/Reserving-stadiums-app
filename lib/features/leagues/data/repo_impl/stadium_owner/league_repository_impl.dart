import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/leagues/data/datasources/stadium_owner/league_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/repositories/stadium_owner/league_repository.dart';

class LeagueRepositoryImpl implements LeagueRepository {
  final LeagueRemoteDatasource remoteDatasource;

  LeagueRepositoryImpl({required this.remoteDatasource});
  @override
  Future<Result<LeagueEntity>> createLeague(
      {required LeagueEntity league}) async {
    return await remoteDatasource.createLeague(league: league);
  }

  @override
  Future<Result<List<LeagueEntity>>> getAllLeagues() async {
    return await remoteDatasource.getAllLeagues();
  }

  @override
  Future<Result<void>> deleteLeague(int id) async {
    return await remoteDatasource.deleteLeague(id);
  }

  @override
  Future<Result<LeagueEntity>> updateLeague(
      {required LeagueEntity league, required int id}) async {
    return await remoteDatasource.updateLeague(league: league, id: id);
  }
}
