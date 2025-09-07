import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'invite_team_model.freezed.dart';
part 'invite_team_model.g.dart';

@freezed
class InviteTeamModel with _$InviteTeamModel {
  const factory InviteTeamModel({
    @JsonKey(name: 'team_id') required int teamId,
    @JsonKey(name: 'league_id') required int leagueId,
    @JsonKey(name: 'is_team') required bool isTeam,
  }) = _InviteTeamModel;
  factory InviteTeamModel.fromJson(Map<String, dynamic> json) =>
      _$InviteTeamModelFromJson(json);
}

extension InviteTeamModelX on InviteTeamModel {
  Map<String, dynamic> toJsonNonNull() {
    final json = toJson();
    json.removeWhere((_, v) => v == null);
    return json;
  }
}
