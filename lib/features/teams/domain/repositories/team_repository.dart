import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/teams/domain/entities/team_entity.dart';
import 'package:reserving_stadiums_app/features/teams/data/models/request/create_team_request.dart';
import '../../data/models/request/update_team_request.dart';
import '../entities/team_details_entity.dart';

abstract class TeamRepository {
  Future<Result<TeamEntity>> createTeam(CreateTeamRequest req);
  Future<Result<List<TeamEntity>>> getAllTeams();
  Future<Result<TeamDetailsEntity>> getTeamDetails(int id);
  Future<Result<TeamEntity>> updateTeam(int id, UpdateTeamRequest req);
  Future<Result<bool>> deleteTeam(int id);
}
