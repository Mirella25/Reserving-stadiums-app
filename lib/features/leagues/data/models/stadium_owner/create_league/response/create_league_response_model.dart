import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/create_league/response/create_league_response_data_model.dart';

part 'create_league_response_model.freezed.dart';
part 'create_league_response_model.g.dart';

@freezed
class CreateLeagueResponseModel with _$CreateLeagueResponseModel {
  const factory CreateLeagueResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required CreateLeagueResponseDataModel data,
  }) = _CreateLeagueResponseModel;
  factory CreateLeagueResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateLeagueResponseModelFromJson(json);
}
