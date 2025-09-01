// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_invitation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeagueInvitationModelImpl _$$LeagueInvitationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LeagueInvitationModelImpl(
      id: _toInt(json['id']),
      leagueId: _toInt(json['league_id']),
      teamId: _toInt(json['team_id']),
      status: json['status'] as String?,
      createdAt: _toDate(json['created_at']),
    );

Map<String, dynamic> _$$LeagueInvitationModelImplToJson(
        _$LeagueInvitationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'league_id': instance.leagueId,
      'team_id': instance.teamId,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
    };
