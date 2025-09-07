part of 'add_facility_bloc.dart';

@immutable
sealed class CreateFacilityEvent {}

class CreateFacilitySubmitted extends CreateFacilityEvent {
  final FacilityEntity facilityEntity;
  final List<File>? photosFiles;

  CreateFacilitySubmitted({
    required this.facilityEntity,
    this.photosFiles,
  });
}
