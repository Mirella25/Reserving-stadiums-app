part of 'team_bloc.dart';

@immutable
class ViewTeamsState {
  final bool isLoading;

  final String? errorMessage;
  final List<TeamEntity> teams;

  const ViewTeamsState({
    this.isLoading = false,
    this.errorMessage,
    this.teams = const [],
  });

  ViewTeamsState copyWith({
    bool? isLoading,
    String? errorMessage,
    List<TeamEntity>? teams,
  }) {
    return ViewTeamsState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      teams: teams ?? this.teams,
    );
  }
}
