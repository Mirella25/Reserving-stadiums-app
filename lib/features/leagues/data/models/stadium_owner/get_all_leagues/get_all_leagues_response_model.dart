import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/leagues/data/models/stadium_owner/get_all_leagues/get_all_leagues_data_response.dart';

part 'get_all_leagues_response_model.freezed.dart';
part 'get_all_leagues_response_model.g.dart';

@freezed
class GetAllLeaguesResponseModel with _$GetAllLeaguesResponseModel {
  const factory GetAllLeaguesResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required List<GetAllLeaguesDataResponse> data,
  }) = _GetAllLeaguesResponseModel;
  factory GetAllLeaguesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllLeaguesResponseModelFromJson(json);
}
