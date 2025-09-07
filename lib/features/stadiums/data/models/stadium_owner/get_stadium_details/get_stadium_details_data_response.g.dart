// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_stadium_details_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStadiumDetailsDataResponseImpl
    _$$GetStadiumDetailsDataResponseImplFromJson(Map<String, dynamic> json) =>
        _$GetStadiumDetailsDataResponseImpl(
          id: (json['id'] as num?)?.toInt(),
          userId: (json['user_id'] as num).toInt(),
          sportId: (json['sport_id'] as num).toInt(),
          name: json['name'] as String,
          location: json['location'] as String,
          description: json['description'] as String,
          photos: json['photos'] as List<dynamic>?,
          length: json['Length'] as String,
          width: json['Width'] as String,
          ownerNumber: (json['owner_number'] as num).toInt(),
          createdAt: json['created_at'] as String?,
          updatedAt: json['updated_at'] as String?,
          startTime: json['start_time'] as String,
          endTime: json['end_time'] as String,
          price: (json['price'] as num).toDouble(),
          deposit: (json['deposit'] as num).toDouble(),
          latitude: (json['latitude'] as num).toDouble(),
          longitude: (json['longitude'] as num).toDouble(),
          duration: (json['duration'] as num).toInt(),
        );

Map<String, dynamic> _$$GetStadiumDetailsDataResponseImplToJson(
        _$GetStadiumDetailsDataResponseImpl instance) =>
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
