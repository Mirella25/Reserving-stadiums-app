import 'package:reserving_stadiums_app/core/network/api_client.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/Team/data/models/stadium_owner/get_all_teams/get_all_teams_data_response_model.dart';
import 'package:reserving_stadiums_app/features/Team/data/models/stadium_owner/get_all_teams/get_all_teams_response_model.dart';
import 'package:reserving_stadiums_app/features/Team/domain/entities/stadium_owner/team_entity.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';

abstract class TeamRemoteDatasource {
  Future<Result<List<TeamEntity>>> getAllTeams();
}

class TeamRemoteDatasourceImp implements TeamRemoteDatasource {
  final DioClient dioClient;
  final AuthLocalDataSource local;

  TeamRemoteDatasourceImp({required this.dioClient, required this.local});
  @override
  Future<Result<List<TeamEntity>>> getAllTeams() async {
    return dioClient.callApi<List<TeamEntity>>(
        endpoint: "teams",
        fromJson: (json) {
          final model = GetAllTeamsResponseModel.fromJson(json);
          print(model.data);
          return model.data.map((m) => m.toEntity()).toList();
        },
        method: 'GET',
        requiresAuth: true,
        token: await local.getCachedToken());
  }
}
