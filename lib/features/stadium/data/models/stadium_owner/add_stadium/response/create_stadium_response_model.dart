// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/stadium/data/models/stadium_owner/add_stadium/response/create_stadium_data_respone_model.dart';

part 'create_stadium_response_model.freezed.dart';
part 'create_stadium_response_model.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class CreateStadiumResponseModel with _$CreateStadiumResponseModel {
  const factory CreateStadiumResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required CreateStadiumDataResponeModel data,
  }) = _CreateStadiumResponseModel;
  factory CreateStadiumResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateStadiumResponseModelFromJson(json);
}
