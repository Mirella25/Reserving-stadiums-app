import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'invite_team_response_model.freezed.dart';
part 'invite_team_response_model.g.dart';

@freezed
class InviteTeamResponseModel with _$InviteTeamResponseModel {
  const factory InviteTeamResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
  }) = _InviteTeamResponseModel;
  factory InviteTeamResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InviteTeamResponseModelFromJson(json);
}
