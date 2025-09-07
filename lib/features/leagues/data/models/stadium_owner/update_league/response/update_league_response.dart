import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/update_league/response/update_league_data_response_model.dart';

part 'update_league_response.freezed.dart';
part 'update_league_response.g.dart';

@freezed
class UpdateLeagueResponse with _$UpdateLeagueResponse {
  const factory UpdateLeagueResponse({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required UpdateLeagueDataResponseModel data,
  }) = _UpdateLeagueResponse;
  factory UpdateLeagueResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateLeagueResponseFromJson(json);
}
