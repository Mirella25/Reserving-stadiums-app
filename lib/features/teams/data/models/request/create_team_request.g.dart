// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_team_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTeamRequestImpl _$$CreateTeamRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTeamRequestImpl(
      name: json['name'] as String,
      captainId: (json['captin_id'] as num).toInt(),
      sportId: (json['sport_id'] as num).toInt(),
      logoPath: json['logoPath'] as String?,
    );

Map<String, dynamic> _$$CreateTeamRequestImplToJson(
        _$CreateTeamRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'captin_id': instance.captainId,
      'sport_id': instance.sportId,
    };
