// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_stadium_requests_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStadiumRequestsDataResponseImpl
    _$$GetStadiumRequestsDataResponseImplFromJson(Map<String, dynamic> json) =>
        _$GetStadiumRequestsDataResponseImpl(
          id: (json['id'] as num?)?.toInt(),
          userId: (json['user_id'] as num).toInt(),
          sportId: (json['sport_id'] as num).toInt(),
          name: json['name'] as String,
          location: json['location'] as String,
          description: json['description'] as String,
          photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          length: json['Length'] as String,
          width: json['Width'] as String,
          ownerNumber: (json['owner_number'] as num).toInt(),
          status: json['status'] as String?,
          adminNotes: json['admin_notes'] as String?,
          createdAt: json['created_at'] as String?,
          updatedAt: json['updated_at'] as String?,
          startTime: json['start_time'] as String,
          endTime: json['end_time'] as String,
          price: json['price'] as String,
          deposit: json['deposit'] as String,
          latitude: json['latitude'] as String,
          longitude: json['longitude'] as String,
          duration: (json['duration'] as num).toInt(),
        );

Map<String, dynamic> _$$GetStadiumRequestsDataResponseImplToJson(
        _$GetStadiumRequestsDataResponseImpl instance) =>
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
      'status': instance.status,
      'admin_notes': instance.adminNotes,
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
