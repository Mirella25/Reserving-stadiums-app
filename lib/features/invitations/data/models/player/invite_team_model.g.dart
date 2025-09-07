// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InviteTeamModelImpl _$$InviteTeamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InviteTeamModelImpl(
      id: (json['id'] as num).toInt(),
      teamId: (json['team_id'] as num).toInt(),
      receiverId: (json['receiver_id'] as num).toInt(),
      isTeam: json['is_team'],
      status: json['status'] as String? ?? 'pending',
      sentAt: json['sent_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$InviteTeamModelImplToJson(
        _$InviteTeamModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'team_id': instance.teamId,
      'receiver_id': instance.receiverId,
      'is_team': instance.isTeam,
      'status': instance.status,
      'sent_at': instance.sentAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
