part of 'register_bloc.dart';

@immutable
class RegisterState {
  final bool isPasswordObscured;
  final bool isPasswordConfirmObscured;
  final bool isLoading;
  final String? errorMessage;
  final RegisterEntity? registerEntity;
  final bool isSuccess;

  const RegisterState(
      {this.isPasswordConfirmObscured = true,
      this.isPasswordObscured = true,
      this.isLoading = false,
      this.errorMessage,
      this.registerEntity,
      this.isSuccess = false});
  RegisterState copyWith({
    bool? isPasswordObscured,
    bool? isPasswordConfirmObscured,
    bool? isLoading,
    String? errorMessage,
    RegisterEntity? registerEntity,
    bool? isSuccess,
  }) {
    return RegisterState(
      isPasswordConfirmObscured:
          isPasswordConfirmObscured ?? this.isPasswordConfirmObscured,
      isPasswordObscured: isPasswordObscured ?? this.isPasswordObscured,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      registerEntity: registerEntity ?? this.registerEntity,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
