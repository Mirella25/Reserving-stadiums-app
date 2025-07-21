import 'package:flutter/cupertino.dart';

@immutable
class ForgetPasswordState {
  final bool isLoading;
  final String? errorMessage;
  final String? successMessage;

  const ForgetPasswordState({
    this.isLoading = false,
    this.errorMessage,
    this.successMessage,
  });

  ForgetPasswordState copyWith({
    bool? isLoading,
    String? errorMessage,
    String? successMessage,
  }) {
    return ForgetPasswordState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      successMessage: successMessage,
    );
  }
}
