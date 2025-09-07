// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_facility_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateFacilityResponseModelImpl _$$CreateFacilityResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateFacilityResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data: CreateFacilityResponseDataWrapper.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateFacilityResponseModelImplToJson(
        _$CreateFacilityResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$CreateFacilityResponseDataWrapperImpl
    _$$CreateFacilityResponseDataWrapperImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateFacilityResponseDataWrapperImpl(
          facility: CreateFacilityResponseDataModel.fromJson(
              json['Facility'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateFacilityResponseDataWrapperImplToJson(
        _$CreateFacilityResponseDataWrapperImpl instance) =>
    <String, dynamic>{
      'Facility': instance.facility,
    };
