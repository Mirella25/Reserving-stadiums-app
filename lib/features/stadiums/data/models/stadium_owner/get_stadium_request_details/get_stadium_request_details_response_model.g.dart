// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_stadium_request_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStadiumRequestDetailsResponseModelImpl
    _$$GetStadiumRequestDetailsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetStadiumRequestDetailsResponseModelImpl(
          status: json['status'] as bool,
          statusCode: (json['status_code'] as num).toInt(),
          message: json['message'] as String?,
          data: GetStadiumRequestDetailsDataResponseModel.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetStadiumRequestDetailsResponseModelImplToJson(
        _$GetStadiumRequestDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
