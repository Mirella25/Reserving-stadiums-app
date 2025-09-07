// lib/features/invitations/data/models/stadium_owner/invite_team_model.dart
// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/player/invite_entity.dart';

part 'invite_team_model.freezed.dart';
part 'invite_team_model.g.dart';

@freezed
class InviteTeamModel with _$InviteTeamModel {
  const factory InviteTeamModel({
    required int id,
    @JsonKey(name: 'team_id') required int teamId,
    @JsonKey(name: 'receiver_id') required int receiverId,

    // السيرفر يرجعها true/1/0 أحياناً
    @JsonKey(name: 'is_team') required dynamic isTeam,

    // السيرفر ما رجع status → خلي default "pending"
    @JsonKey(name: 'status') @Default('pending') String status,

    // السيرفر ما رجّع sent_at → خليه nullable وخد created/updated كـ fallback
    @JsonKey(name: 'sent_at') String? sentAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _InviteTeamModel;

  factory InviteTeamModel.fromJson(Map<String, dynamic> json) =>
      _$InviteTeamModelFromJson(json);
}

extension InviteTeamModelX on InviteTeamModel {
  InviteEntity toEntity() {
    final rawTs = sentAt ?? createdAt ?? updatedAt ?? '';
    DateTime ts;
    // جرّب ISO أولاً، وإذا فيه مسافة حوّلها لـ T
    ts = DateTime.tryParse(rawTs) ??
        DateTime.tryParse(rawTs.replaceFirst(' ', 'T')) ??
        DateTime.now();

    final boolTeam = (isTeam is bool)
        ? isTeam as bool
        : (isTeam == 1 || isTeam == '1' || isTeam == 'true');

    return InviteEntity(
      id: id,
      teamId: teamId,
      receiverId: receiverId,
      status: status.isNotEmpty ? status : 'pending',
      sentAt: ts,
      isTeam: boolTeam,
    );
  }
}
