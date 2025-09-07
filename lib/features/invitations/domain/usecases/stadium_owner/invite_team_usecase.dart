import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/entities/stadium_owner/invite_team_entity.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/repositories/stadium_owner/invitations_repository.dart';

class InviteTeamUsecase {
  final InvitationsRepository invitationsRepository;

  InviteTeamUsecase({required this.invitationsRepository});
  Future<Result<void>> execute(InviteTeamEntity inviteTeamEntity) {
    return invitationsRepository.inviteTeam(inviteTeamEntity);
  }
}
