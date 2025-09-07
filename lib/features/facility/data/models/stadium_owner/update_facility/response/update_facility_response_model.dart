import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/update_facility/response/update_facility_response_data_model.dart';

part 'update_facility_response_model.freezed.dart';
part 'update_facility_response_model.g.dart';

@freezed
class UpdateFacilityResponseModel with _$UpdateFacilityResponseModel {
  const factory UpdateFacilityResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required UpdateFacilityResponseDataWrapper data,
  }) = _UpdateFacilityResponseModel;
  factory UpdateFacilityResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateFacilityResponseModelFromJson(json);
}

@freezed
class UpdateFacilityResponseDataWrapper
    with _$UpdateFacilityResponseDataWrapper {
  const factory UpdateFacilityResponseDataWrapper({
    @JsonKey(name: 'Facility')
    required UpdateFacilityResponseDataModel facility,
  }) = _UpdateFacilityResponseDataWrapper;

  factory UpdateFacilityResponseDataWrapper.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateFacilityResponseDataWrapperFromJson(json);
}
