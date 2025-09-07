part of 'add_facility_bloc.dart';

@immutable
class CreateFacilityState {
  final bool isLoading;

  final String? errorMessage;
  final FacilityEntity? facilityEntity;
  final bool isSuccess;

  const CreateFacilityState({
    this.facilityEntity,
    this.isLoading = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  CreateFacilityState copyWith(
      {bool? isLoading,
      bool? isDeleting,
      String? errorMessage,
      FacilityEntity? facilityEntity,
      bool? isSuccess,
      bool? deleteSuccess}) {
    return CreateFacilityState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      facilityEntity: facilityEntity ?? this.facilityEntity,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
