// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InviteTeamModelImpl _$$InviteTeamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InviteTeamModelImpl(
      teamId: (json['team_id'] as num).toInt(),
      leagueId: (json['league_id'] as num).toInt(),
      isTeam: json['is_team'] as bool,
    );

Map<String, dynamic> _$$InviteTeamModelImplToJson(
        _$InviteTeamModelImpl instance) =>
    <String, dynamic>{
      'team_id': instance.teamId,
      'league_id': instance.leagueId,
      'is_team': instance.isTeam,
    };
