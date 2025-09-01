import 'package:reserving_stadiums_app/core/result/result.dart';
import '../repositories/team_repository.dart';

class DeleteTeamUsecase {
  final TeamRepository repo;
  DeleteTeamUsecase(this.repo);
  Future<Result<bool>> call(int id) => repo.deleteTeam(id);
}
