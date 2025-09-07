// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_facility_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateFacilityRequestModelImpl _$$UpdateFacilityRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateFacilityRequestModelImpl(
      stadiumId: (json['stadium_id'] as num).toInt(),
      name: json['name'] as String,
      quantity: json['quantity'] as String,
    );

Map<String, dynamic> _$$UpdateFacilityRequestModelImplToJson(
        _$UpdateFacilityRequestModelImpl instance) =>
    <String, dynamic>{
      'stadium_id': instance.stadiumId,
      'name': instance.name,
      'quantity': instance.quantity,
    };
