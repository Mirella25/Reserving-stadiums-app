// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_stadium_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStadiumDetailsResponseModelImpl
    _$$GetStadiumDetailsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$GetStadiumDetailsResponseModelImpl(
          status: json['status'] as bool,
          statusCode: (json['status_code'] as num).toInt(),
          message: json['message'] as String?,
          data: GetStadiumDetailsDataWrapper.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetStadiumDetailsResponseModelImplToJson(
        _$GetStadiumDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$GetStadiumDetailsDataWrapperImpl _$$GetStadiumDetailsDataWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStadiumDetailsDataWrapperImpl(
      stadium: GetStadiumDetailsDataResponse.fromJson(
          json['Stadium'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetStadiumDetailsDataWrapperImplToJson(
        _$GetStadiumDetailsDataWrapperImpl instance) =>
    <String, dynamic>{
      'Stadium': instance.stadium,
    };
