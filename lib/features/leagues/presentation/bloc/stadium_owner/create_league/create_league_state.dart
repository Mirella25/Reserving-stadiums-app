part of 'create_league_bloc.dart';

class CreateLeagueState {
  final bool isLoading;
  final bool isSuccess;
  final String? errorMessage;

  const CreateLeagueState({
    this.isLoading = false,
    this.isSuccess = false,
    this.errorMessage,
  });

  CreateLeagueState copyWith({
    bool? isLoading,
    bool? isSuccess,
    String? errorMessage, // pass null to clear
  }) {
    return CreateLeagueState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      errorMessage: errorMessage,
    );
  }
}
