part of 'create_league_bloc.dart';

@immutable
sealed class CreateLeagueEvent {}

class CreateLeagueSubmitted extends CreateLeagueEvent {
  final LeagueEntity league;

  CreateLeagueSubmitted({required this.league});
}
