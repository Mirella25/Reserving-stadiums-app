// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamModelImpl _$$TeamModelImplFromJson(Map<String, dynamic> json) =>
    _$TeamModelImpl(
      id: _toInt(json['id']),
      name: json['name'] as String,
      captainId: _toInt(json['captin_id']),
      sportId: _toInt(json['sport_id']),
      logo: json['logo'] as String?,
      logoUrl: json['logo_url'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      captain: json['captain'] == null
          ? null
          : TeamCaptainModel.fromJson(json['captain'] as Map<String, dynamic>),
      sport: json['sport'] == null
          ? null
          : SportModel.fromJson(json['sport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeamModelImplToJson(_$TeamModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'captin_id': instance.captainId,
      'sport_id': instance.sportId,
      'logo': instance.logo,
      'logo_url': instance.logoUrl,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'captain': instance.captain,
      'sport': instance.sport,
    };
