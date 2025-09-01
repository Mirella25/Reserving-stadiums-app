import 'package:equatable/equatable.dart';
import 'package:reserving_stadiums_app/features/teams/data/models/request/create_team_request.dart';

abstract class TeamCreateEvent extends Equatable {
  const TeamCreateEvent();
  @override
  List<Object?> get props => [];
}

class SubmitCreateTeam extends TeamCreateEvent {
  final CreateTeamRequest req;
  const SubmitCreateTeam(this.req);

  @override
  List<Object?> get props => [req];
}
