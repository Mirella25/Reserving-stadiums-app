// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_facility_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetFacilityDetailsResponseModelImpl
    _$$GetFacilityDetailsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$GetFacilityDetailsResponseModelImpl(
          status: json['status'] as bool,
          statusCode: (json['status_code'] as num).toInt(),
          message: json['message'] as String?,
          data: GetFacilityDetailsResponseDataWrapper.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetFacilityDetailsResponseModelImplToJson(
        _$GetFacilityDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$GetFacilityDetailsResponseDataWrapperImpl
    _$$GetFacilityDetailsResponseDataWrapperImplFromJson(
            Map<String, dynamic> json) =>
        _$GetFacilityDetailsResponseDataWrapperImpl(
          facility: GetFacilityDetailsResponseDataModel.fromJson(
              json['Facility'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetFacilityDetailsResponseDataWrapperImplToJson(
        _$GetFacilityDetailsResponseDataWrapperImpl instance) =>
    <String, dynamic>{
      'Facility': instance.facility,
    };
