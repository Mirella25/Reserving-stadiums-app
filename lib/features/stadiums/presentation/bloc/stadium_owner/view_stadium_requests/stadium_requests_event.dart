part of 'stadium_requests_bloc.dart';

@immutable
sealed class StadiumRequetsEvent {}

class LoadStadiumRequestsEvent extends StadiumRequetsEvent {}
