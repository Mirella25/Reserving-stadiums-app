// lib/features/leagues/presentation/bloc/leagues_state.dart
import '../../domain/entities/league_entity.dart';

class LeaguesState {
  final bool isLoading;
  final List<LeagueEntity> leagues; // non-null
  final String? errorMessage;
  final bool joinSuccess;

  const LeaguesState({
    this.isLoading = false,
    this.leagues = const [],
    this.errorMessage,
    this.joinSuccess = false,
  });

  factory LeaguesState.initial() => const LeaguesState();

  LeaguesState copyWith({
    bool? isLoading,
    List<LeagueEntity>? leagues,
    String? errorMessage,
    bool? joinSuccess,
  }) {
    return LeaguesState(
      isLoading: isLoading ?? this.isLoading,
      leagues: leagues ?? this.leagues,
      errorMessage: errorMessage,
      joinSuccess: joinSuccess ?? this.joinSuccess,
    );
  }
}
