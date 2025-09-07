// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_stadium_facilities_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStadiumFacilitiesResponseModelImpl
    _$$GetStadiumFacilitiesResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetStadiumFacilitiesResponseModelImpl(
          status: json['status'] as bool,
          statusCode: (json['status_code'] as num).toInt(),
          message: json['message'] as String?,
          data: GetStadiumFacilitiesResponseDataWrapper.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetStadiumFacilitiesResponseModelImplToJson(
        _$GetStadiumFacilitiesResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$GetStadiumFacilitiesResponseDataWrapperImpl
    _$$GetStadiumFacilitiesResponseDataWrapperImplFromJson(
            Map<String, dynamic> json) =>
        _$GetStadiumFacilitiesResponseDataWrapperImpl(
          facilities: (json['Facilities'] as List<dynamic>)
              .map((e) => GetStadiumFacilitiesDataResponseModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetStadiumFacilitiesResponseDataWrapperImplToJson(
        _$GetStadiumFacilitiesResponseDataWrapperImpl instance) =>
    <String, dynamic>{
      'Facilities': instance.facilities,
    };
