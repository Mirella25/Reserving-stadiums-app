part of 'verification_bloc.dart';

@immutable
class VerificationState {
  final String code;
  final bool isError;
  final bool isSuccess;

  VerificationState({
    this.code = '',
    this.isError = false,
    this.isSuccess = false,
  });
  VerificationState copyWith({
    String? code,
    bool? isError,
    bool? isSuccess,
  }) {
    return VerificationState(
      code: code ?? this.code,
      isError: isError ?? this.isError,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
