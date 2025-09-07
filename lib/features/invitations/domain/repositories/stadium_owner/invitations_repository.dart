import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/entities/stadium_owner/invite_team_entity.dart';

abstract class InvitationsRepository {
  Future<Result<void>> inviteTeam(InviteTeamEntity inviteTeamEntity);
}
