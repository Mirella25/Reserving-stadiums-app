part of 'login_bloc.dart';



@immutable
sealed class LoginEvent {}

class TogglePasswordVisibility extends LoginEvent {}

class LoginSubmitted extends LoginEvent {
  final String email;
  final String password;

  LoginSubmitted({required this.email, required this.password});
}

class GoogleLoginSubmitted extends LoginEvent {
  final String idToken;

  GoogleLoginSubmitted({required this.idToken});
}
