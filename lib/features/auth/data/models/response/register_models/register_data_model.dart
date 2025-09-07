import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/register_entity.dart';

part 'register_data_model.freezed.dart';
part 'register_data_model.g.dart';

String? _toNullableString(dynamic v) => v == null ? null : v.toString();

@freezed
class RegisterDataModel with _$RegisterDataModel {
  const factory RegisterDataModel({
    required String role,
    @JsonKey(name: 'onboarding_url', fromJson: _toNullableString)
    String? onboardingUrl,
  }) = _RegisterDataModel;

  factory RegisterDataModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataModelFromJson(json);
}

extension RegisterDataModelX on RegisterDataModel {
  RegisterEntity toEntity() {
    return RegisterEntity(
      role: role,
      onboardingUrl: onboardingUrl,
    );
  }
}
