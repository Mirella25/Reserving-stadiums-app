import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_stadium_details/get_stadium_details_data_response.dart';

part 'get_stadium_details_response_model.freezed.dart';
part 'get_stadium_details_response_model.g.dart';

@freezed
class GetStadiumDetailsResponseModel with _$GetStadiumDetailsResponseModel {
  const factory GetStadiumDetailsResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required GetStadiumDetailsDataWrapper data,
  }) = _GetStadiumDetailsResponseModel;
  factory GetStadiumDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetStadiumDetailsResponseModelFromJson(json);
}

@freezed
class GetStadiumDetailsDataWrapper with _$GetStadiumDetailsDataWrapper {
  const factory GetStadiumDetailsDataWrapper({
    @JsonKey(name: 'Stadium') required GetStadiumDetailsDataResponse stadium,
  }) = _GetStadiumDetailsDataWrapper;

  factory GetStadiumDetailsDataWrapper.fromJson(Map<String, dynamic> json) =>
      _$GetStadiumDetailsDataWrapperFromJson(json);
}
