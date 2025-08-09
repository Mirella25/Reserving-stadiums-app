// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_stadium_data_respone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateStadiumDataResponeModelImpl
    _$$CreateStadiumDataResponeModelImplFromJson(Map<String, dynamic> json) =>
        _$CreateStadiumDataResponeModelImpl(
          id: (json['id'] as num).toInt(),
          sportId: (json['sport_id'] as num).toInt(),
          name: json['name'] as String,
          location: json['location'] as String,
          description: json['description'] as String,
          length: json['Length'] as String,
          width: json['Width'] as String,
          ownerNumber: (json['owner_number'] as num).toInt(),
          photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          userId: (json['user_id'] as num).toInt(),
          createdAt: json['created_at'] as String,
          updatedAt: json['updated_at'] as String,
          startTime: json['start_time'] as String,
          endTime: json['end_time'] as String,
          price: json['price'] as String,
          deposit: json['deposit'] as String,
          latitude: json['latitude'] as String,
          longitude: json['longitude'] as String,
          duration: (json['duration'] as num).toInt(),
        );

Map<String, dynamic> _$$CreateStadiumDataResponeModelImplToJson(
        _$CreateStadiumDataResponeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sport_id': instance.sportId,
      'name': instance.name,
      'location': instance.location,
      'description': instance.description,
      'Length': instance.length,
      'Width': instance.width,
      'owner_number': instance.ownerNumber,
      'photos': instance.photos,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'price': instance.price,
      'deposit': instance.deposit,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'duration': instance.duration,
    };
