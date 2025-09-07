// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_facility_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateFacilityResponseModelImpl _$$UpdateFacilityResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateFacilityResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data: UpdateFacilityResponseDataWrapper.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateFacilityResponseModelImplToJson(
        _$UpdateFacilityResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$UpdateFacilityResponseDataWrapperImpl
    _$$UpdateFacilityResponseDataWrapperImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateFacilityResponseDataWrapperImpl(
          facility: UpdateFacilityResponseDataModel.fromJson(
              json['Facility'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateFacilityResponseDataWrapperImplToJson(
        _$UpdateFacilityResponseDataWrapperImpl instance) =>
    <String, dynamic>{
      'Facility': instance.facility,
    };
