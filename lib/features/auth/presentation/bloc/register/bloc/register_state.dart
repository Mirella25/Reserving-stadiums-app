part of 'register_bloc.dart';

@immutable
class RegisterState {
  final bool isPasswordObscured;
  final bool isPasswordConfirmObscured;

  const RegisterState(
      {this.isPasswordConfirmObscured = true, this.isPasswordObscured = true});
  RegisterState copyWith(
      {bool? isPasswordObscured, bool? isPasswordConfirmObscured}) {
    return RegisterState(
      isPasswordConfirmObscured:
          isPasswordConfirmObscured ?? this.isPasswordConfirmObscured,
      isPasswordObscured: isPasswordObscured ?? this.isPasswordObscured,
    );
  }
}
