import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/Team/data/datasources/stadium_owner/team_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/Team/domain/entities/stadium_owner/team_entity.dart';
import 'package:reserving_stadiums_app/features/Team/domain/repositories/stadium_owner/team_repository.dart';

class TeamRepositoryImpl implements TeamRepository {
  final TeamRemoteDatasource teamRemoteDatasource;

  TeamRepositoryImpl({required this.teamRemoteDatasource});
  @override
  Future<Result<List<TeamEntity>>> getAllTeams() async {
    return await teamRemoteDatasource.getAllTeams();
  }
}
