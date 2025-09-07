// lib/features/teams/invite/domain/repositories/invite_repository.dart
import 'package:reserving_stadiums_app/core/result/result.dart';

import '../../entities/player/invite_entity.dart';

abstract class InviteRepository {
  Future<Result<InviteEntity>> sendInvite({
    required int teamId,
    required int receiverId,
    bool isTeam,
  });
}
