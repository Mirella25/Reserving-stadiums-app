import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'generate_stadium_slots_response_model.freezed.dart';
part 'generate_stadium_slots_response_model.g.dart';

@freezed
class GenerateStadiumSlotsResponseModel
    with _$GenerateStadiumSlotsResponseModel {
  const factory GenerateStadiumSlotsResponseModel(
      {required bool status,
      @JsonKey(name: 'status_code') required int statusCode,
      String? message}) = _GenerateStadiumSlotsResponseModel;
  factory GenerateStadiumSlotsResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$GenerateStadiumSlotsResponseModelFromJson(json);
}
