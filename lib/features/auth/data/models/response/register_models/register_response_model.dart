import 'package:freezed_annotation/freezed_annotation.dart';
import 'register_data_model.dart';

part 'register_response_model.freezed.dart';
part 'register_response_model.g.dart';

@freezed
class RegisterResponseModel with _$RegisterResponseModel {
  const factory RegisterResponseModel({
    required bool status,
    required String message,
    // لو حاب تخلّيها non-null غيرها لـ required RegisterDataModel data
   required RegisterDataModel data,
  }) = _RegisterResponseModel;

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}
