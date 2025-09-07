import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/update_stadium/response/update_stadium_data_response_model.dart';

part 'update_stadium_response_model.freezed.dart';
part 'update_stadium_response_model.g.dart';

@freezed
class UpdateStadiumResponseModel with _$UpdateStadiumResponseModel {
  const factory UpdateStadiumResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required UpdateStadiumDataWrapper data,
  }) = _UpdateStadiumResponseModel;
  factory UpdateStadiumResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateStadiumResponseModelFromJson(json);
}

@freezed
class UpdateStadiumDataWrapper with _$UpdateStadiumDataWrapper {
  const factory UpdateStadiumDataWrapper({
    @JsonKey(name: 'Stadium') required UpdateStadiumDataResponseModel stadium,
  }) = _UpdateStadiumDataWrapper;

  factory UpdateStadiumDataWrapper.fromJson(Map<String, dynamic> json) =>
      _$UpdateStadiumDataWrapperFromJson(json);
}
