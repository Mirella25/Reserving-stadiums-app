part of 'update_league_bloc.dart';

@immutable
sealed class UpdateLeagueEvent {}

class UpdateLeagueSubmitted extends UpdateLeagueEvent {
  final LeagueEntity league;

  final int id;
  UpdateLeagueSubmitted({
    required this.league,
    required this.id,
  });
}
