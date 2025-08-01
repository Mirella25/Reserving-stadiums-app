part of 'stadium_bloc.dart';

@immutable
class StadiumState {
  final bool isLoading;
  final String? errorMessage;
  final StadiumEntity? stadiumEntity;
  final bool isSuccess;

  const StadiumState({
    this.stadiumEntity,
    this.isLoading = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  StadiumState copyWith({
    bool? isLoading,
    String? errorMessage,
    StadiumEntity? stadiumEntity,
    bool? isSuccess,
  }) {
    return StadiumState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      stadiumEntity: stadiumEntity ?? this.stadiumEntity,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
