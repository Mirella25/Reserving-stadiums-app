// lib/features/teams/invite/domain/entities/invite_entity.dart
import 'package:equatable/equatable.dart';

class InviteEntity extends Equatable {
  final int id;
  final int teamId;
  final int receiverId;
  final String status; // pending / accepted / rejected
  final DateTime sentAt;
  final bool isTeam;

  const InviteEntity({
    required this.id,
    required this.teamId,
    required this.receiverId,
    required this.status,
    required this.sentAt,
    required this.isTeam,
  });

  @override
  List<Object> get props => [id, teamId, receiverId, status, sentAt, isTeam];
}
