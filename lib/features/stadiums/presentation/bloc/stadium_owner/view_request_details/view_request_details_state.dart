part of 'view_request_details_bloc.dart';

class ViewStadiumRequestDetailsState {
  final bool isLoading;
  final String? errorMessage;
  final StadiumEntity? stadium;

  const ViewStadiumRequestDetailsState({
    this.isLoading = false,
    this.errorMessage,
    this.stadium,
  });

  ViewStadiumRequestDetailsState copyWith({
    bool? isLoading,
    String? errorMessage,
    StadiumEntity? stadium,
  }) {
    return ViewStadiumRequestDetailsState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      stadium: stadium ?? this.stadium,
    );
  }
}
