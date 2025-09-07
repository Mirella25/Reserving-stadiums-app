import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/Team/domain/entities/stadium_owner/team_entity.dart';

abstract class TeamRepository {
  Future<Result<List<TeamEntity>>> getAllTeams();
}
