part of 'login_bloc.dart';

@immutable
class LoginState {
  final bool isPasswordObscured;

  const LoginState({
    this.isPasswordObscured = true,
  });
  LoginState copyWith({
    bool? isPasswordObscured,
  }) {
    return LoginState(
      isPasswordObscured: isPasswordObscured ?? this.isPasswordObscured,
    );
  }
}
