// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_facility_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateFacilityResponseDataModelImpl
    _$$CreateFacilityResponseDataModelImplFromJson(Map<String, dynamic> json) =>
        _$CreateFacilityResponseDataModelImpl(
          id: (json['id'] as num?)?.toInt(),
          stadiumId: _parseInt(json['stadium_id']),
          name: json['name'] as String,
          quantity: _parseNullableString(json['quantity']),
          photos: _parsePhotos(json['photos']),
          createdAt: _parseDateTime(json['created_at']),
          updatedAt: _parseDateTime(json['updated_at']),
          stadium: json['stadium'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$$CreateFacilityResponseDataModelImplToJson(
        _$CreateFacilityResponseDataModelImpl instance) =>
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
