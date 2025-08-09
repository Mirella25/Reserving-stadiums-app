import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'delete_stadium_request_response_model.freezed.dart';
part 'delete_stadium_request_response_model.g.dart';

@freezed
class DeleteStadiumRequestResponseModel
    with _$DeleteStadiumRequestResponseModel {
  const factory DeleteStadiumRequestResponseModel(
      {required bool status,
      @JsonKey(name: 'status_code') required int statusCode,
      String? message}) = _DeleteStadiumRequestResponseModel;
  factory DeleteStadiumRequestResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteStadiumRequestResponseModelFromJson(json);
}
