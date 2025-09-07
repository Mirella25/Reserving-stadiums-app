// lib/features/teams/invite/domain/usecases/send_invite_usecase.dart
import 'package:reserving_stadiums_app/core/result/result.dart';

import '../../entities/player/invite_entity.dart';
import '../../repositories/player/invite_repository.dart';

class SendInviteUsecase {
  final InviteRepository repo;
  SendInviteUsecase(this.repo);

  Future<Result<InviteEntity>> call({
    required int teamId,
    required int receiverId,
    bool isTeam = true,
  }) {
    return repo.sendInvite(
      teamId: teamId,
      receiverId: receiverId,
      isTeam: isTeam,
    );
  }
}
