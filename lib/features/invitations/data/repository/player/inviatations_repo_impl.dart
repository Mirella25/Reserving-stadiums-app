// lib/features/invitations/data/repository/player/invitations_repository_impl.dart
import 'package:reserving_stadiums_app/core/result/result.dart';

import 'package:reserving_stadiums_app/features/invitations/domain/entities/player/invite_entity.dart';

import '../../../domain/repositories/player/invite_repository.dart';
import '../../datasources/player/invitations_remote_datasource.dart';

class InvitationsRepositoryImpl implements InviteRepository {
  final InviteRemoteDatasource remote;

  InvitationsRepositoryImpl({required this.remote});

  @override
  Future<Result<InviteEntity>> sendInvite({
    required int teamId,
    required int receiverId,
    bool isTeam = true,
  }) {
    return remote.sendInvite(
      teamId: teamId,
      receiverId: receiverId,
      isTeam: isTeam,
    );
  }
}
