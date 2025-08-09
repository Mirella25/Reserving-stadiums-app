// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'owner_create_stadium_data_model.dart';
import 'owner_create_stadium_data_model.dart';

part 'owner_create_stadium_response_model.freezed.dart';
part 'owner_create_stadium_response_model.g.dart';

@freezed

class OwnerCreateStadiumResponseModel with _$OwnerCreateStadiumResponseModel {
  const factory OwnerCreateStadiumResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required OwnerCreateStadiumDataModel data,
  }) = _OwnerCreateStadiumResponseModel;

  factory OwnerCreateStadiumResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerCreateStadiumResponseModelFromJson(json);
}
