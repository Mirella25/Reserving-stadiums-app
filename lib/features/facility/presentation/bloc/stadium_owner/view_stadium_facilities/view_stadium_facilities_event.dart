part of 'view_stadium_facilities_bloc.dart';

@immutable
sealed class ViewStadiumFacilitiesEvent {}

class LoadStadiumFacilitiesEvent extends ViewStadiumFacilitiesEvent {
  final int id;

  LoadStadiumFacilitiesEvent({required this.id});
}

class DeleteFacilitySubmitted extends ViewStadiumFacilitiesEvent {
  final int id;
  final int stadiumId;
  DeleteFacilitySubmitted({required this.stadiumId, required this.id});
}
