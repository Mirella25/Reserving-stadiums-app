import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_stadium_request_details/get_stadium_request_details_data_response_model.dart';

part 'get_stadium_request_details_response_model.freezed.dart';
part 'get_stadium_request_details_response_model.g.dart';

@freezed
class GetStadiumRequestDetailsResponseModel
    with _$GetStadiumRequestDetailsResponseModel {
  const factory GetStadiumRequestDetailsResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required GetStadiumRequestDetailsDataResponseModel data,
  }) = _GetStadiumRequestDetailsResponseModel;
  factory GetStadiumRequestDetailsResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$GetStadiumRequestDetailsResponseModelFromJson(json);
}
