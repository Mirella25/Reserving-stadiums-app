part of 'register_bloc.dart';

@immutable
sealed class RegisterEvent {}

class TogglePasswordVisibility extends RegisterEvent {}

class TogglePasswordConfirmVisibility extends RegisterEvent {}

class RegisterSubmitted extends RegisterEvent {
  final String email;
  final String role;
  final String password;
  final String confirmPassword;

  RegisterSubmitted(
      {required this.email,
      required this.role,
      required this.password,
      required this.confirmPassword});
}
