part of 'update_stadium_bloc.dart';

@immutable
class UpdateStadiumState {
  final bool isLoading;

  final String? errorMessage;
  final StadiumEntity? stadiumEntity;
  final bool isSuccess;

  const UpdateStadiumState({
    this.stadiumEntity,
    this.isLoading = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  UpdateStadiumState copyWith({
    bool? isLoading,
    String? errorMessage,
    StadiumEntity? stadiumEntity,
    bool? isSuccess,
  }) {
    return UpdateStadiumState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      stadiumEntity: stadiumEntity ?? this.stadiumEntity,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
