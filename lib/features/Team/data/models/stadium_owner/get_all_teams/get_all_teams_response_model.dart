import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/Team/data/models/stadium_owner/get_all_teams/get_all_teams_data_response_model.dart';

part 'get_all_teams_response_model.freezed.dart';
part 'get_all_teams_response_model.g.dart';

@freezed
class GetAllTeamsResponseModel with _$GetAllTeamsResponseModel {
  const factory GetAllTeamsResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required List<GetAllTeamsDataResponseModel> data,
  }) = _GetAllTeamsResponseModel;
  factory GetAllTeamsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllTeamsResponseModelFromJson(json);
}
