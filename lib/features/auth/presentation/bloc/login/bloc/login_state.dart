part of 'login_bloc.dart';

@immutable
class LoginState {
  final bool isPasswordObscured;
  final bool isLoading;
  final String? errorMessage;
  final LoginEntity? loginEntity;
  final bool isSuccess;

  const LoginState({
    this.isPasswordObscured = true,
    this.isLoading = false,
    this.errorMessage,
    this.loginEntity,
    this.isSuccess = false,
  });

  LoginState copyWith({
    bool? isPasswordObscured,
    bool? isLoading,
    String? errorMessage,
    LoginEntity? loginEntity,
    bool? isSuccess,
  }) {
    return LoginState(
      isPasswordObscured: isPasswordObscured ?? this.isPasswordObscured,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      loginEntity: loginEntity ?? this.loginEntity,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
