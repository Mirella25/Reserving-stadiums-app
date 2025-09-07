import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'delete_stadium_model.freezed.dart';
part 'delete_stadium_model.g.dart';

@freezed
class DeleteStadiumModel with _$DeleteStadiumModel {
  const factory DeleteStadiumModel(
      {required bool status,
      @JsonKey(name: 'status_code') required int statusCode,
      String? message}) = _DeleteStadiumModel;
  factory DeleteStadiumModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteStadiumModelFromJson(json);
}
