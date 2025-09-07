part of 'view_facility_details_bloc.dart';

class ViewFacilityDetailsState {
  final bool isLoading;
  final String? errorMessage;
  final FacilityEntity? facility;

  const ViewFacilityDetailsState({
    this.isLoading = false,
    this.errorMessage,
    this.facility,
  });

  ViewFacilityDetailsState copyWith({
    bool? isLoading,
    String? errorMessage,
    FacilityEntity? facility,
  }) {
    return ViewFacilityDetailsState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      facility: facility ?? this.facility,
    );
  }
}
