import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/get_stadium_facilities/get_stadium_facilities_data_response_model.dart';

part 'get_stadium_facilities_response_model.freezed.dart';
part 'get_stadium_facilities_response_model.g.dart';

@freezed
class GetStadiumFacilitiesResponseModel
    with _$GetStadiumFacilitiesResponseModel {
  const factory GetStadiumFacilitiesResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    // IMPORTANT: data is a single wrapper object (not a list)
    required GetStadiumFacilitiesResponseDataWrapper data,
  }) = _GetStadiumFacilitiesResponseModel;
  factory GetStadiumFacilitiesResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$GetStadiumFacilitiesResponseModelFromJson(json);
}

@freezed
class GetStadiumFacilitiesResponseDataWrapper
    with _$GetStadiumFacilitiesResponseDataWrapper {
  const factory GetStadiumFacilitiesResponseDataWrapper({
    @JsonKey(name: 'Facilities')
    required List<GetStadiumFacilitiesDataResponseModel> facilities,
  }) = _GetStadiumFacilitiesResponseDataWrapper;

  factory GetStadiumFacilitiesResponseDataWrapper.fromJson(
          Map<String, dynamic> json) =>
      _$GetStadiumFacilitiesResponseDataWrapperFromJson(json);
}
