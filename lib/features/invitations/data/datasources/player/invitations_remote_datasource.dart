// lib/features/invitations/data/datasources/player/invite_remote_datasource.dart
import 'package:reserving_stadiums_app/core/network/api_client.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import '../../models/player/invite_team_model.dart';

import '../../../domain/entities/player/invite_entity.dart';

abstract class InviteRemoteDatasource {
  Future<Result<InviteEntity>> sendInvite({
    required int teamId,
    required int receiverId,
    bool isTeam = true,
  });
}

class InviteRemoteDatasourceImpl implements InviteRemoteDatasource {
  final DioClient dioClient;
  final AuthLocalDataSource localDataSource;

  InviteRemoteDatasourceImpl({
    required this.dioClient,
    required this.localDataSource,
  });

  @override
  Future<Result<InviteEntity>> sendInvite({
    required int teamId,
    required int receiverId,
    bool isTeam = true,
  }) async {
    return dioClient.callApi<InviteEntity>(
      endpoint: 'team-usesrinv',
      method: 'POST',
      requiresAuth: true,
      token: await localDataSource.getCachedToken(),
      data: {
        'team_id': teamId,
        'receiver_id': receiverId,
        'is_team': isTeam,
      },
      fromJson: (json) {
        // نشتغل على json['data'] مباشرة (فيه created_at/updated_at)
        final data = Map<String, dynamic>.from(json['data'] as Map);
        return InviteTeamModel.fromJson(data).toEntity();
      },
    );
  }
}
