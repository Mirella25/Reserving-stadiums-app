import '../../../../core/result/result.dart';
import '../entities/team_details_entity.dart';
import '../repositories/team_repository.dart';

class GetTeamDetailsUsecase {
  final TeamRepository repo;
  GetTeamDetailsUsecase(this.repo);
  Future<Result<TeamDetailsEntity>> call(int id) => repo.getTeamDetails(id);
}