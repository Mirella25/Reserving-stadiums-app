
import 'package:equatable/equatable.dart';

import '../../../data/models/request/update_team_request.dart';

/// ======================= Events =======================
abstract class TeamDetailsEvent extends Equatable {
  const TeamDetailsEvent();
  @override
  List<Object?> get props => [];
}

class LoadTeamDetails extends TeamDetailsEvent {
  final int teamId;
  const LoadTeamDetails(this.teamId);
  @override
  List<Object?> get props => [teamId];
}

class UpdateTeamEvent extends TeamDetailsEvent {
  final int teamId;
  final UpdateTeamRequest req; // name / sportId / captainId (captin_id)
  const UpdateTeamEvent({required this.teamId, required this.req});
  @override
  List<Object?> get props => [teamId, req];
}

class DeleteTeamEvent extends TeamDetailsEvent {
  final int teamId;
  const DeleteTeamEvent(this.teamId);
  @override
  List<Object?> get props => [teamId];
}