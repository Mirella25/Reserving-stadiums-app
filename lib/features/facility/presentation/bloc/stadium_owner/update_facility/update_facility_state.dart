part of 'update_facility_bloc.dart';

@immutable
class UpdateFacilityState {
  final bool isLoading;

  final String? errorMessage;
  final FacilityEntity? facilityEntity;
  final bool isSuccess;

  const UpdateFacilityState({
    this.facilityEntity,
    this.isLoading = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  UpdateFacilityState copyWith({
    bool? isLoading,
    String? errorMessage,
    FacilityEntity? facilityEntity,
    bool? isSuccess,
  }) {
    return UpdateFacilityState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      facilityEntity: facilityEntity ?? this.facilityEntity,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
