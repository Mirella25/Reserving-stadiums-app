// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stadium_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StadiumModelImpl _$$StadiumModelImplFromJson(Map<String, dynamic> json) =>
    _$StadiumModelImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      sportId: (json['sport_id'] as num).toInt(),
      name: json['name'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      length: json['Length'] as String,
      width: json['Width'] as String,
      ownerNumber: (json['owner_number'] as num).toInt(),
      latitude: _toDouble(json['latitude']),
      longitude: _toDouble(json['longitude']),
    );

Map<String, dynamic> _$$StadiumModelImplToJson(_$StadiumModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'sport_id': instance.sportId,
      'name': instance.name,
      'location': instance.location,
      'description': instance.description,
      'photos': instance.photos,
      'Length': instance.length,
      'Width': instance.width,
      'owner_number': instance.ownerNumber,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
