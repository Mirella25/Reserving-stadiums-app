part of 'leagues_bloc.dart';

@immutable
sealed class LeaguesEvent {}

class LoadLeaguesEvent extends LeaguesEvent {}

class DeleteLeagueSubmitted extends LeaguesEvent {
  final int id;
  DeleteLeagueSubmitted({required this.id});
}
