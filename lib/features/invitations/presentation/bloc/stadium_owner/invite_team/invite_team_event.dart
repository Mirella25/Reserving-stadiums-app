part of 'invite_team_bloc.dart';

@immutable
sealed class InviteTeamEvent {}

class InviteTeamSubmitted extends InviteTeamEvent {
  final InviteTeamEntity inviteTeamEntity;

  InviteTeamSubmitted({required this.inviteTeamEntity});
}
