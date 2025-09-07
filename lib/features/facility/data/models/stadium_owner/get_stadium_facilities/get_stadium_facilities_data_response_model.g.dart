// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_stadium_facilities_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStadiumFacilitiesDataResponseModelImpl
    _$$GetStadiumFacilitiesDataResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetStadiumFacilitiesDataResponseModelImpl(
          id: (json['id'] as num?)?.toInt(),
          stadiumId: (json['stadium_id'] as num).toInt(),
          name: json['name'] as String,
          quantity: _quantityFromJson(json['quantity']),
          photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          createdAt: json['created_at'] as String?,
          updatedAt: json['updated_at'] as String?,
          stadium: json['stadium'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$$GetStadiumFacilitiesDataResponseModelImplToJson(
        _$GetStadiumFacilitiesDataResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stadium_id': instance.stadiumId,
      'name': instance.name,
      'quantity': instance.quantity,
      'photos': instance.photos,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'stadium': instance.stadium,
    };
