part of 'invite_team_bloc.dart';

class InviteTeamState {
  final bool isLoading;
  final bool isSuccess;
  final String? errorMessage;

  const InviteTeamState({
    this.isLoading = false,
    this.isSuccess = false,
    this.errorMessage,
  });

  InviteTeamState copyWith({
    bool? isLoading,
    bool? isSuccess,
    String? errorMessage,
  }) {
    return InviteTeamState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      errorMessage: errorMessage,
    );
  }
}
