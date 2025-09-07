part of 'view_facility_details_bloc.dart';

@immutable
abstract class ViewFacilityDetailsEvent {}

class LoadFacilityDetailsEvent extends ViewFacilityDetailsEvent {
  final int id;
  LoadFacilityDetailsEvent({required this.id});
}
