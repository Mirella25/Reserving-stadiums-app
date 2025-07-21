import 'package:meta/meta.dart';

@immutable
class ResetPasswordState {
  final bool isLoading;
  final String? errorMessage;
  final String? successMessage;

  const ResetPasswordState({
    this.isLoading = false,
    this.errorMessage,
    this.successMessage,
  });

  ResetPasswordState copyWith({
    bool? isLoading,
    String? errorMessage,
    String? successMessage,
  }) {
    return ResetPasswordState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      successMessage: successMessage,
    );
  }
}
