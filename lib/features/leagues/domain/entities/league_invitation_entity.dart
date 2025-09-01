// lib/features/leagues/domain/entities/league_invitation_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_invitation_entity.freezed.dart';

@freezed
class LeagueInvitationEntity with _$LeagueInvitationEntity {
  const factory LeagueInvitationEntity({
    int? id,
    int? leagueId,
    int? teamId,
    String? status,
    DateTime? createdAt,
  }) = _LeagueInvitationEntity;
}
