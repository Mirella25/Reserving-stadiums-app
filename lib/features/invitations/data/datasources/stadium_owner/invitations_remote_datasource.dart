import 'package:reserving_stadiums_app/core/network/api_client.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/invitations/data/models/stadium_owner/invite_team/request/invite_team_model.dart';
import 'package:reserving_stadiums_app/features/invitations/data/models/stadium_owner/invite_team/response/invite_team_response_model.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/entities/stadium_owner/invite_team_entity.dart';

abstract class InvitationsRemoteDatasource {
  Future<Result<void>> inviteTeam(InviteTeamEntity inviteTeamEntity);
}

class InvitationsRemoteDatasourceImp implements InvitationsRemoteDatasource {
  final DioClient dioClient;
  final AuthLocalDataSource local;

  InvitationsRemoteDatasourceImp(
      {required this.dioClient, required this.local});
  @override
  Future<Result<void>> inviteTeam(InviteTeamEntity inviteTeamEntity) async {
    final request = InviteTeamModel(
        isTeam: false,
        leagueId: inviteTeamEntity.leagueId,
        teamId: inviteTeamEntity.teamId);

    return dioClient.callApi(
      endpoint: 'team-ownerinv',
      data: request.toJson(),
      method: 'POST',
      requiresAuth: true,
      token: await local.getCachedToken(),
      fromJson: (json) {
        final model = InviteTeamResponseModel.fromJson(json);
        return null;
      },
    );
  }
}
