part of 'view_stadiums_bloc.dart';

@immutable
class ViewStadiumsState {
  final bool isLoading;
  final bool isDeleting;
  final bool deleteSuccess;
  final bool isGenerating;
  final bool generateSuccess;
  final String? errorMessage;
  final String? generateSuccessMessage;
  final List<StadiumEntity> stadiums;

  const ViewStadiumsState({
    this.isLoading = false,
    this.isDeleting = false,
    this.isGenerating = false,
    this.deleteSuccess = false,
    this.generateSuccess = false,
    this.errorMessage,
    this.generateSuccessMessage,
    this.stadiums = const [],
  });

  ViewStadiumsState copyWith({
    bool? isLoading,
    String? errorMessage,
    String? generateSuccessMessage,
    List<StadiumEntity>? stadiums,
    bool? deleteSuccess,
    bool? isDeleting,
    bool? generateSuccess,
    bool? isGenerating,
  }) {
    return ViewStadiumsState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      generateSuccessMessage:
          generateSuccessMessage ?? this.generateSuccessMessage,
      stadiums: stadiums ?? this.stadiums,
      deleteSuccess: deleteSuccess ?? this.deleteSuccess,
      isDeleting: isDeleting ?? this.isDeleting,
      generateSuccess: generateSuccess ?? this.generateSuccess,
      isGenerating: isGenerating ?? this.isGenerating,
    );
  }
}
