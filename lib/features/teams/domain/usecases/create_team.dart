import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/teams/domain/entities/team_entity.dart';
import 'package:reserving_stadiums_app/features/teams/domain/repositories/team_repository.dart';
import 'package:reserving_stadiums_app/features/teams/data/models/request/create_team_request.dart';

class CreateTeamUseCase {
  final TeamRepository repo;
  CreateTeamUseCase(this.repo);

  Future<Result<TeamEntity>> call(CreateTeamRequest req) {
    return repo.createTeam(req);
  }
}
