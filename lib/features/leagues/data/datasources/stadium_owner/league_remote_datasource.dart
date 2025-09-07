import 'package:reserving_stadiums_app/core/network/api_client.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/create_league/request/create_league_request_model.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/create_league/response/create_league_response_data_model.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/create_league/response/create_league_response_model.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/delete_league/delete_league_response_model.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/get_all_leagues/get_all_leagues_data_response.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/get_all_leagues/get_all_leagues_response_model.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/update_league/request/update_league_request_model.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/update_league/response/update_league_data_response_model.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/update_league/response/update_league_response.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';

abstract class LeagueRemoteDatasource {
  Future<Result<LeagueEntity>> createLeague({
    required LeagueEntity league,
  });
  Future<Result<List<LeagueEntity>>> getAllLeagues();
  Future<Result<void>> deleteLeague(int id);
  Future<Result<LeagueEntity>> updateLeague(
      {required LeagueEntity league, required int id});
}

class LeagueRemoteDatasourceImp implements LeagueRemoteDatasource {
  final DioClient dioClient;
  final AuthLocalDataSource localDataSource;

  LeagueRemoteDatasourceImp(
      {required this.dioClient, required this.localDataSource});

  @override
  Future<Result<LeagueEntity>> createLeague(
      {required LeagueEntity league}) async {
    final request = CreateLeagueRequestModel(
        name: league.name,
        price: league.price,
        startDate: league.startDate,
        endDate: league.endDate,
        prize: league.prize,
        status: league.status,
        stadiumId: league.stadiumId,
        description: league.description);

    return dioClient.callApi<LeagueEntity>(
        endpoint: 'leagues',
        data: request.toJson(),
        method: 'POST',
        requiresAuth: true,
        token: await localDataSource.getCachedToken(),
        fromJson: (json) =>
            CreateLeagueResponseModel.fromJson(json).data.toEntity());
  }

  @override
  Future<Result<List<LeagueEntity>>> getAllLeagues() async {
    return dioClient.callApi<List<LeagueEntity>>(
        endpoint: "leagues/my",
        fromJson: (json) {
          final model = GetAllLeaguesResponseModel.fromJson(json);
          print(model.data);
          return model.data.map((m) => m.toEntity()).toList();
        },
        method: 'GET',
        requiresAuth: true,
        token: await localDataSource.getCachedToken());
  }

  @override
  Future<Result<void>> deleteLeague(int id) async {
    return dioClient.callApi(
        endpoint: "leagues/$id",
        fromJson: (json) {
          final model = DeleteLeagueResponseModel.fromJson(json);
          return null;
        },
        method: 'DELETE',
        requiresAuth: true,
        token: await localDataSource.getCachedToken());
  }

  @override
  Future<Result<LeagueEntity>> updateLeague(
      {required LeagueEntity league, required int id}) async {
    final request = UpdateLeagueRequestModel(
        name: league.name,
        price: league.price,
        startDate: league.startDate,
        endDate: league.endDate,
        prize: league.prize,
        status: league.status,
        stadiumId: league.stadiumId,
        description: league.description);

    return dioClient.callApi<LeagueEntity>(
        endpoint: 'leagues/$id',
        data: request.toJson(),
        method: 'PUT',
        requiresAuth: true,
        token: await localDataSource.getCachedToken(),
        fromJson: (json) =>
            UpdateLeagueResponse.fromJson(json).data.toEntity());
  }
}
