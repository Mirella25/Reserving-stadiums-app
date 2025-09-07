import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_all_stadiums/get_all_stadiums_data_response_model.dart';

part 'get_all_stadiums_response_model.freezed.dart';
part 'get_all_stadiums_response_model.g.dart';

@freezed
class GetAllStadiumsResponseModel with _$GetAllStadiumsResponseModel {
  const factory GetAllStadiumsResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required List<GetAllStadiumsDataResponseModel> data,
  }) = _GetAllStadiumsResponseModel;
  factory GetAllStadiumsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllStadiumsResponseModelFromJson(json);
}
