// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/stadium/data/models/response/create_stadium_data_respone_model.dart';

part 'create_stadium_response_model.freezed.dart';
part 'create_stadium_response_model.g.dart';

@freezed
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

// @freezed
// class StadiumDataContainer with _$StadiumDataContainer {
//   const factory StadiumDataContainer({
//     @JsonKey(name: 'data') required CreateStadiumDataResponeModel stadium,
//   }) = _StadiumDataContainer;

//   factory StadiumDataContainer.fromJson(Map<String, dynamic> json) =>
//       _$StadiumDataContainerFromJson(json);
// }
