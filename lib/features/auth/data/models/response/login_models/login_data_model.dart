import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/login_entity.dart';
import '../user_model/user_model.dart';

part 'login_data_model.freezed.dart';
part 'login_data_model.g.dart';

@freezed
class LoginDataModel with _$LoginDataModel {
  const factory LoginDataModel({
    required String token,
    required UserModel user,
    @Default(0) int profileId,
  }) = _LoginDataModel;

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}
extension LoginDataModelX on LoginDataModel {
  LoginEntity toEntity() {
    return LoginEntity(
      token: token,
      user: user.toEntity(),
        profileId: profileId
    );
  }
}

