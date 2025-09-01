import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/teams/data/models/request/update_team_request.dart';
import 'package:reserving_stadiums_app/features/teams/domain/entities/team_details_entity.dart';
import 'package:reserving_stadiums_app/features/teams/domain/entities/team_entity.dart';
import 'package:reserving_stadiums_app/features/teams/domain/repositories/team_repository.dart';
import 'package:reserving_stadiums_app/features/teams/data/datasources/team_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/teams/data/models/request/create_team_request.dart';

class TeamRepositoryImpl implements TeamRepository {
  final TeamRemoteDatasource remote;
  TeamRepositoryImpl({required this.remote});

  @override
  Future<Result<TeamEntity>> createTeam(CreateTeamRequest req) => remote.createTeam(req);

  @override
  Future<Result<List<TeamEntity>>> getAllTeams() => remote.getAllTeams();

  @override
  Future<Result<TeamDetailsEntity>> getTeamDetails(int id) {
   return remote.getTeamDetails(id);
  }

  @override
  Future<Result<TeamEntity>> updateTeam(int id, UpdateTeamRequest req) =>
      remote.updateTeam(id, req);

  @override
  Future<Result<bool>> deleteTeam(int id) => remote.deleteTeam(id);
}
