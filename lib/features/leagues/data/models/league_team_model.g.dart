// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeagueTeamModelImpl _$$LeagueTeamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LeagueTeamModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      captainId: (json['captin_id'] as num?)?.toInt(),
      sportId: (json['sport_id'] as num?)?.toInt(),
      logo: json['logo'] as String?,
      logoUrl: json['logo_url'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$LeagueTeamModelImplToJson(
        _$LeagueTeamModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'captin_id': instance.captainId,
      'sport_id': instance.sportId,
      'logo': instance.logo,
      'logo_url': instance.logoUrl,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
