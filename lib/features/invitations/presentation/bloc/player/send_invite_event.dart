// lib/features/invitations/presentation/bloc/player/invite_event.dart
import 'package:equatable/equatable.dart';

abstract class InviteEvent extends Equatable {
  const InviteEvent();
  @override
  List<Object?> get props => [];
}

class SendInviteEvent extends InviteEvent {
  final int teamId;
  final int receiverId;
  final bool isTeam;

  const SendInviteEvent({
    required this.teamId,
    required this.receiverId,
    this.isTeam = true,
  });

  @override
  List<Object?> get props => [teamId, receiverId, isTeam];
}

class ResetInviteEvent extends InviteEvent {
  const ResetInviteEvent();
}
