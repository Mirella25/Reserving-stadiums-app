part of 'view_stadiums_bloc.dart';

@immutable
sealed class ViewStadiumsEvent {}

class LoadStadiumsEvent extends ViewStadiumsEvent {}

class DeleteStadiumSubmitted extends ViewStadiumsEvent {
  final int id;
  DeleteStadiumSubmitted({required this.id});
}

class GenerateStadiumSlotsSubmitted extends ViewStadiumsEvent {
  final int id;
  GenerateStadiumSlotsSubmitted({required this.id});
}
