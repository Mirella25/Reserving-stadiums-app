import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'delete_facility_model.freezed.dart';
part 'delete_facility_model.g.dart';

@freezed
class DeleteFacilityModel with _$DeleteFacilityModel {
  const factory DeleteFacilityModel(
      {required bool status,
      @JsonKey(name: 'status_code') required int statusCode,
      String? message}) = _DeleteFacilityModel;
  factory DeleteFacilityModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteFacilityModelFromJson(json);
}
