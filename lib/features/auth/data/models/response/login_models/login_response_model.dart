import 'package:freezed_annotation/freezed_annotation.dart';
import 'login_data_model.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required LoginDataModel data,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
