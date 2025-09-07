part of 'view_stadium_details_bloc.dart';

@immutable
abstract class ViewStadiumDetailsEvent {}

class LoadStadiumDetailsEvent extends ViewStadiumDetailsEvent {
  final int id;
  LoadStadiumDetailsEvent({required this.id});
}
