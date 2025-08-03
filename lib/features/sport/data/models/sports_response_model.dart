// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reserving_stadiums_app/features/sport/data/models/sport_model.dart';

part 'sports_response_model.freezed.dart';
part 'sports_response_model.g.dart';

@freezed
class SportsResponseModel with _$SportsResponseModel {
  const factory SportsResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    @JsonKey(name: 'data') required SportsContainer data,
  }) = _SportsResponseModel;
  factory SportsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SportsResponseModelFromJson(json);
}

@freezed
class SportsContainer with _$SportsContainer {
  const factory SportsContainer({
    @JsonKey(name: 'Sports:') required List<SportModel> sports,
  }) = _SportsContainer;

  factory SportsContainer.fromJson(Map<String, dynamic> json) =>
      _$SportsContainerFromJson(json);
}
