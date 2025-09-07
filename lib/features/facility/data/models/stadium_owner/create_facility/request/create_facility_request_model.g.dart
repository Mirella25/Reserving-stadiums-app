// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_facility_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateFacilityRequestModelImpl _$$CreateFacilityRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateFacilityRequestModelImpl(
      stadiumId: (json['stadium_id'] as num).toInt(),
      name: json['name'] as String,
      quantity: json['quantity'] as String,
    );

Map<String, dynamic> _$$CreateFacilityRequestModelImplToJson(
        _$CreateFacilityRequestModelImpl instance) =>
    <String, dynamic>{
      'stadium_id': instance.stadiumId,
      'name': instance.name,
      'quantity': instance.quantity,
    };
