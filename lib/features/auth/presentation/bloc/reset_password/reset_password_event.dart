import 'package:meta/meta.dart';

@immutable
abstract class ResetPasswordEvent {}

class ResetPasswordSubmitEvent extends ResetPasswordEvent {
  final String token;
  final String email;
  final String password;
  final String confirmPassword;

  ResetPasswordSubmitEvent({
    required this.token,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}
