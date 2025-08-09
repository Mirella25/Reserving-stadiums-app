part of 'stadium_requests_bloc.dart';

@immutable
class StadiumRequestsState {
  final bool isLoading;
  final String? errorMessage;
  final List<StadiumEntity> requests;

  const StadiumRequestsState({
    this.isLoading = false,
    this.errorMessage,
    this.requests = const [],
  });

  StadiumRequestsState copyWith({
    bool? isLoading,
    String? errorMessage,
    List<StadiumEntity>? requests,
  }) {
    return StadiumRequestsState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      requests: requests ?? this.requests,
    );
  }
}
