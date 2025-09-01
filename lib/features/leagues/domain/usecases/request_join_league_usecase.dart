// lib/features/leagues/domain/usecases/request_join_league_usecase.dart
import '../../../../core/result/result.dart';
import '../entities/league_invitation_entity.dart';
import '../repositories/leagues_repository.dart';

class RequestJoinLeagueUseCase {
  final LeaguesRepository repo;

  RequestJoinLeagueUseCase(this.repo);

  Future<Result<LeagueInvitationEntity>> execute({
    required int teamId,
    required int leagueId,
    required bool isTeam,
  }) {
    return repo.requestJoinLeague(
      teamId: teamId,
      leagueId: leagueId,
      isTeam: isTeam,
    );
  }
}