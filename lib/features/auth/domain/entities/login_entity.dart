import 'package:reserving_stadiums_app/features/auth/domain/entities/user_entity.dart';

class LoginEntity {
  final String token;
  final UserEntity user;
  final int profileId;
  final List<String> roles;

  LoginEntity({
    required this.token,
    required this.user,
    required this.profileId,
    required this.roles
  });
}
