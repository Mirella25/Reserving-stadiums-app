// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'register_data_model.dart';

part 'register_response_model.freezed.dart';
part 'register_response_model.g.dart';

@freezed
class RegisterResponseModel with _$RegisterResponseModel {
  const factory RegisterResponseModel({
    @JsonKey(required: true)
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required RegisterDataModel data,
  }) = _RegisterResponseModel;

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}
