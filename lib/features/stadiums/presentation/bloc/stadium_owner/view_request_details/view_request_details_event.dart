part of 'view_request_details_bloc.dart';

@immutable
abstract class ViewStadiumRequestDetailsEvent {}

class LoadStadiumRequestDetailsEvent extends ViewStadiumRequestDetailsEvent {
  final int id;
  LoadStadiumRequestDetailsEvent({required this.id});
}
