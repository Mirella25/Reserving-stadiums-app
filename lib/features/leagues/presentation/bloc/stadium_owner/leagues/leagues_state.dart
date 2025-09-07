part of 'leagues_bloc.dart';

class LeaguesState {
  final bool isLoading;
  final List<LeagueEntity> leagues;
  final Map<int, String> stadiumNames;
  final String? errorMessage;
  final bool isDeleting;
  final bool deleteSuccess;

  const LeaguesState({
    this.isLoading = false,
    this.leagues = const [],
    this.stadiumNames = const {},
    this.errorMessage,
    this.isDeleting = false,
    this.deleteSuccess = false,
  });

  LeaguesState copyWith({
    bool? isLoading,
    List<LeagueEntity>? leagues,
    Map<int, String>? stadiumNames,
    String? errorMessage,
    bool? deleteSuccess,
    bool? isDeleting,
  }) {
    return LeaguesState(
      isLoading: isLoading ?? this.isLoading,
      leagues: leagues ?? this.leagues,
      stadiumNames: stadiumNames ?? this.stadiumNames,
      errorMessage: errorMessage,
      deleteSuccess: deleteSuccess ?? this.deleteSuccess,
      isDeleting: isDeleting ?? this.isDeleting,
    );
  }
}
