part of 'view_stadium_details_bloc.dart';

class ViewStadiumDetailsState {
  final bool isLoading;
  final String? errorMessage;
  final StadiumEntity? stadium;

  const ViewStadiumDetailsState({
    this.isLoading = false,
    this.errorMessage,
    this.stadium,
  });

  ViewStadiumDetailsState copyWith({
    bool? isLoading,
    String? errorMessage,
    StadiumEntity? stadium,
  }) {
    return ViewStadiumDetailsState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      stadium: stadium ?? this.stadium,
    );
  }
}
