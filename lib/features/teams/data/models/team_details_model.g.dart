// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamDetailsModelImpl _$$TeamDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      logoPath: json['logo'] as String?,
      logoUrl: json['logo_url'] as String?,
      captain: json['captain'] as Map<String, dynamic>?,
      sport: json['sport'] as Map<String, dynamic>?,
      profiles: json['profiles'] as List<dynamic>? ?? const <dynamic>[],
    );

Map<String, dynamic> _$$TeamDetailsModelImplToJson(
        _$TeamDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logoPath,
      'logo_url': instance.logoUrl,
      'captain': instance.captain,
      'sport': instance.sport,
      'profiles': instance.profiles,
    };
