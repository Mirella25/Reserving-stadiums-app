// lib/features/leagues/data/models/league_invitation_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/league_invitation_entity.dart';

part 'league_invitation_model.freezed.dart';
part 'league_invitation_model.g.dart';

int? _toInt(dynamic v) {
  if (v == null) return null;
  if (v is int) return v;
  if (v is num) return v.toInt();
  if (v is String) return int.tryParse(v);
  return null;
}

DateTime? _toDate(dynamic v) =>
    v == null ? null : DateTime.tryParse(v.toString());

@freezed
class LeagueInvitationModel with _$LeagueInvitationModel {
  const factory LeagueInvitationModel({
    @JsonKey(fromJson: _toInt, name: 'id') int? id,
    @JsonKey(fromJson: _toInt, name: 'league_id') int? leagueId,
    @JsonKey(fromJson: _toInt, name: 'team_id') int? teamId,
    String? status,
    @JsonKey(fromJson: _toDate, name: 'created_at') DateTime? createdAt,
  }) = _LeagueInvitationModel;

  factory LeagueInvitationModel.fromJson(Map<String, dynamic> json) =>
      _$LeagueInvitationModelFromJson(json);
}

extension LeagueInvitationModelX on LeagueInvitationModel {
  LeagueInvitationEntity toEntity() => LeagueInvitationEntity(
    id: id,
    leagueId: leagueId,
    teamId: teamId,
    status: status,
    createdAt: createdAt,
  );
}
