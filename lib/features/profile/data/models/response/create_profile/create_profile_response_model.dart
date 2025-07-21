// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reserving_stadiums_app/features/profile/data/models/response/create_profile/create_profile_data_model.dart';

part 'create_profile_response_model.freezed.dart';
part 'create_profile_response_model.g.dart';

@freezed
class CreateProfileResponseModel with _$CreateProfileResponseModel {
  const factory CreateProfileResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required ProfileDataContainer data,
  }) = _CreateProfileResponseModel;

  factory CreateProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProfileResponseModelFromJson(json);
}

@freezed
class ProfileDataContainer with _$ProfileDataContainer {
  const factory ProfileDataContainer({
    required CreateProfileDataModel profile,
  }) = _ProfileDataContainer;

  factory ProfileDataContainer.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataContainerFromJson(json);
}
