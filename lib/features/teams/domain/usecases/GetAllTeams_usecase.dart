import '../../../../core/result/result.dart';
import '../entities/team_entity.dart';
import '../repositories/team_repository.dart';

class GetAllTeamsUseCase {
  final TeamRepository repo;
  GetAllTeamsUseCase(this.repo);

  Future<Result<List<TeamEntity>>> call() => repo.getAllTeams();
}
