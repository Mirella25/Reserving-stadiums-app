// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_facility_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteFacilityModelImpl _$$DeleteFacilityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteFacilityModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$DeleteFacilityModelImplToJson(
        _$DeleteFacilityModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
    };
