part of 'stadium_requests_bloc.dart';

@immutable
class StadiumRequestsState {
  final bool isLoading;
  final String? errorMessage;
  final List<StadiumEntity>? stadiumEntity;

  const StadiumRequestsState({
    this.stadiumEntity,
    this.isLoading = false,
    this.errorMessage,
  });

  StadiumRequestsState copyWith({
    bool? isLoading,
    String? errorMessage,
    List<StadiumEntity>? stadiumEntity,
    bool? isSuccess,
  }) {
    return StadiumRequestsState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      stadiumEntity: stadiumEntity ?? this.stadiumEntity,
    );
  }
}
