import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'delete_league_response_model.freezed.dart';
part 'delete_league_response_model.g.dart';

@freezed
class DeleteLeagueResponseModel with _$DeleteLeagueResponseModel {
  const factory DeleteLeagueResponseModel(
      {required bool status,
      @JsonKey(name: 'status_code') required int statusCode,
      String? message}) = _DeleteLeagueResponseModel;
  factory DeleteLeagueResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteLeagueResponseModelFromJson(json);
}
