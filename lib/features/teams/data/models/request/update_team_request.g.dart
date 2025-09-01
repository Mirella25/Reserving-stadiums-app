// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_team_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTeamRequestImpl _$$UpdateTeamRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTeamRequestImpl(
      name: json['name'] as String?,
      sportId: (json['sport_id'] as num?)?.toInt(),
      captainId: (json['captin_id'] as num?)?.toInt(),
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$UpdateTeamRequestImplToJson(
        _$UpdateTeamRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sport_id': instance.sportId,
      'captin_id': instance.captainId,
      'logo': instance.logo,
    };
