// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_facility_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateFacilityResponseDataModelImpl
    _$$UpdateFacilityResponseDataModelImplFromJson(Map<String, dynamic> json) =>
        _$UpdateFacilityResponseDataModelImpl(
          id: (json['id'] as num?)?.toInt(),
          stadiumId: _parseInt(json['stadium_id']),
          name: json['name'] as String,
          quantity: _parseNullableString(json['quantity']),
          photos: _parsePhotos(json['photos']),
          createdAt: _parseDateTime(json['created_at']),
          updatedAt: _parseDateTime(json['updated_at']),
          stadium: json['stadium'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$$UpdateFacilityResponseDataModelImplToJson(
        _$UpdateFacilityResponseDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stadium_id': instance.stadiumId,
      'name': instance.name,
      'quantity': instance.quantity,
      'photos': instance.photos,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'stadium': instance.stadium,
    };
