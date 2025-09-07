part of 'update_league_bloc.dart';

class UpdateLeagueState {
  final bool isLoading;
  final bool isSuccess;
  final String? errorMessage;

  const UpdateLeagueState({
    this.isLoading = false,
    this.isSuccess = false,
    this.errorMessage,
  });

  UpdateLeagueState copyWith({
    bool? isLoading,
    bool? isSuccess,
    String? errorMessage, // pass null to clear
  }) {
    return UpdateLeagueState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      errorMessage: errorMessage,
    );
  }
}
