import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/user_entity.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String email,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
extension UserModelX on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      email: email,
      emailVerifiedAt: emailVerifiedAt,
    );
  }
}
