import 'package:reserving_stadiums_app/core/result/result.dart';
import '../entities/team_entity.dart';
import '../repositories/team_repository.dart';
import '../../data/models/request/update_team_request.dart';

class UpdateTeamUsecase {
  final TeamRepository repo;
  UpdateTeamUsecase(this.repo);
  Future<Result<TeamEntity>> call(int id, UpdateTeamRequest req) =>
      repo.updateTeam(id, req);
}
