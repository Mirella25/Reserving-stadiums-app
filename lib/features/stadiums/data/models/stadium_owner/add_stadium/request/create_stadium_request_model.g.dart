// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_stadium_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateStadiumRequestModelImpl _$$CreateStadiumRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateStadiumRequestModelImpl(
      sportId: json['sport_id'] as String,
      name: json['name'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      length: json['Length'] as String,
      width: json['Width'] as String,
      ownerNumber: json['owner_number'] as String,
    );

Map<String, dynamic> _$$CreateStadiumRequestModelImplToJson(
        _$CreateStadiumRequestModelImpl instance) =>
    <String, dynamic>{
      'sport_id': instance.sportId,
      'name': instance.name,
      'location': instance.location,
      'description': instance.description,
      'Length': instance.length,
      'Width': instance.width,
      'owner_number': instance.ownerNumber,
    };
