part of 'stadium_bloc.dart';

@immutable
class StadiumState {
  final bool isLoading;
  final bool isDeleting;
  final bool deleteSuccess;
  final String? errorMessage;
  final StadiumEntity? stadiumEntity;
  final bool isSuccess;

  const StadiumState({
    this.stadiumEntity,
    this.isLoading = false,
    this.errorMessage,
    this.isSuccess = false,
    this.isDeleting = false,
    this.deleteSuccess = false,
  });

  StadiumState copyWith(
      {bool? isLoading,
      bool? isDeleting,
      String? errorMessage,
      StadiumEntity? stadiumEntity,
      bool? isSuccess,
      bool? deleteSuccess}) {
    return StadiumState(
      isLoading: isLoading ?? this.isLoading,
      isDeleting: isDeleting ?? this.isDeleting,
      errorMessage: errorMessage,
      stadiumEntity: stadiumEntity ?? this.stadiumEntity,
      isSuccess: isSuccess ?? this.isSuccess,
      deleteSuccess: deleteSuccess ?? this.deleteSuccess,
    );
  }
}
