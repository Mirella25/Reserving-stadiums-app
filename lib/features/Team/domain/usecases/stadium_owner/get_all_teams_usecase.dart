import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/Team/domain/entities/stadium_owner/team_entity.dart';
import 'package:reserving_stadiums_app/features/Team/domain/repositories/stadium_owner/team_repository.dart';

class GetAllTeamsUsecase {
  final TeamRepository teamRepository;

  GetAllTeamsUsecase({required this.teamRepository});
  Future<Result<List<TeamEntity>>> execute() {
    return teamRepository.getAllTeams();
  }
}
