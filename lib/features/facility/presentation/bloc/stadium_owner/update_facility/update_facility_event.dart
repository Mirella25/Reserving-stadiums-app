part of 'update_facility_bloc.dart';

@immutable
sealed class UpdateFacilityEvent {}

class UpdateFacilitySubmitted extends UpdateFacilityEvent {
  final FacilityEntity facilityEntity;
  final List<File>? photosFiles;
  final int id;

  UpdateFacilitySubmitted(
      {required this.facilityEntity, this.photosFiles, required this.id});
}
