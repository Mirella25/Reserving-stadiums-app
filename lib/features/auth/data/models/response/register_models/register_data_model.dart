import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reserving_stadiums_app/features/auth/domain/entities/register_entity.dart';

part 'register_data_model.freezed.dart';
part 'register_data_model.g.dart';

@freezed
class RegisterDataModel with _$RegisterDataModel {
  const factory RegisterDataModel({
    required String role,
  }) = _RegisterDataModel;

  factory RegisterDataModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataModelFromJson(json);
}

extension RegisterDataModelX on RegisterDataModel {
  RegisterEntity toEntity() => RegisterEntity(role: role);
}
