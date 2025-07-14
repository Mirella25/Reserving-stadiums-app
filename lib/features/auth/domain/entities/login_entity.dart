import 'user_entity.dart';

class LoginEntity {
  final String token;
  final UserEntity user;

  LoginEntity({
    required this.token,
    required this.user,
  });
}
