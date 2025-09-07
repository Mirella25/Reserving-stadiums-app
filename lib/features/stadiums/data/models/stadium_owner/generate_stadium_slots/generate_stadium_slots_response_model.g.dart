// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_stadium_slots_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateStadiumSlotsResponseModelImpl
    _$$GenerateStadiumSlotsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GenerateStadiumSlotsResponseModelImpl(
          status: json['status'] as bool,
          statusCode: (json['status_code'] as num).toInt(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$$GenerateStadiumSlotsResponseModelImplToJson(
        _$GenerateStadiumSlotsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
    };
