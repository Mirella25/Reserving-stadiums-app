part of 'view_stadium_facilities_bloc.dart';

@immutable
class ViewStadiumFacilitiesState {
  final bool isLoading;
  final bool isDeleting;
  final bool deleteSuccess;
  final String? errorMessage;
  final List<FacilityEntity> facilities;

  const ViewStadiumFacilitiesState({
    this.isLoading = false,
    this.errorMessage,
    this.facilities = const [],
    this.isDeleting = false,
    this.deleteSuccess = false,
  });

  ViewStadiumFacilitiesState copyWith(
      {bool? isLoading,
      String? errorMessage,
      List<FacilityEntity>? facilities,
      bool? deleteSuccess,
      bool? isDeleting}) {
    return ViewStadiumFacilitiesState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      facilities: facilities ?? this.facilities,
      deleteSuccess: deleteSuccess ?? this.deleteSuccess,
      isDeleting: isDeleting ?? this.isDeleting,
    );
  }
}
