import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/get_facility_details/get_facility_details_response_data_model.dart';

part 'get_facility_details_response_model.freezed.dart';
part 'get_facility_details_response_model.g.dart';

@freezed
class GetFacilityDetailsResponseModel with _$GetFacilityDetailsResponseModel {
  const factory GetFacilityDetailsResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required GetFacilityDetailsResponseDataWrapper data,
  }) = _GetFacilityDetailsResponseModel;
  factory GetFacilityDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetFacilityDetailsResponseModelFromJson(json);
}

@freezed
class GetFacilityDetailsResponseDataWrapper
    with _$GetFacilityDetailsResponseDataWrapper {
  const factory GetFacilityDetailsResponseDataWrapper({
    @JsonKey(name: 'Facility')
    required GetFacilityDetailsResponseDataModel facility,
  }) = _GetFacilityDetailsResponseDataWrapper;

  factory GetFacilityDetailsResponseDataWrapper.fromJson(
          Map<String, dynamic> json) =>
      _$GetFacilityDetailsResponseDataWrapperFromJson(json);
}
