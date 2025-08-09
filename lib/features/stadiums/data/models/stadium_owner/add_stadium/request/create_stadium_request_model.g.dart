// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_stadium_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateStadiumRequestModelImpl _$$CreateStadiumRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateStadiumRequestModelImpl(
      sportId: (json['sport_id'] as num).toInt(),
      name: json['name'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      length: json['Length'] as String,
      width: json['Width'] as String,
      ownerNumber: (json['owner_number'] as num).toInt(),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      price: json['price'] as String,
      deposit: json['deposit'] as String,
      duration: (json['duration'] as num).toInt(),
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
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
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'price': instance.price,
      'deposit': instance.deposit,
      'duration': instance.duration,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
