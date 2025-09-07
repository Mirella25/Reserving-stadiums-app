import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/invitations/data/datasources/stadium_owner/invitations_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/entities/stadium_owner/invite_team_entity.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/repositories/stadium_owner/invitations_repository.dart';

class InvitationsRepositoryImpl implements InvitationsRepository {
  final InvitationsRemoteDatasource invitationsRemoteDatasource;

  InvitationsRepositoryImpl({required this.invitationsRemoteDatasource});
  @override
  Future<Result<void>> inviteTeam(InviteTeamEntity inviteTeamEntity) async {
    return await invitationsRemoteDatasource.inviteTeam(inviteTeamEntity);
  }
}
