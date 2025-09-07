import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/create_facility/response/create_facility_response_data_model.dart';

part 'create_facility_response_model.freezed.dart';
part 'create_facility_response_model.g.dart';

@freezed
class CreateFacilityResponseModel with _$CreateFacilityResponseModel {
  const factory CreateFacilityResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required CreateFacilityResponseDataWrapper data,
  }) = _CreateFacilityResponseModel;
  factory CreateFacilityResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateFacilityResponseModelFromJson(json);
}

@freezed
class CreateFacilityResponseDataWrapper
    with _$CreateFacilityResponseDataWrapper {
  const factory CreateFacilityResponseDataWrapper({
    @JsonKey(name: 'Facility')
    required CreateFacilityResponseDataModel facility,
  }) = _CreateFacilityResponseDataWrapper;

  factory CreateFacilityResponseDataWrapper.fromJson(
          Map<String, dynamic> json) =>
      _$CreateFacilityResponseDataWrapperFromJson(json);
}
