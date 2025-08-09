// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_stadium_request_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteStadiumRequestResponseModelImpl
    _$$DeleteStadiumRequestResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$DeleteStadiumRequestResponseModelImpl(
          status: json['status'] as bool,
          statusCode: (json['status_code'] as num).toInt(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$$DeleteStadiumRequestResponseModelImplToJson(
        _$DeleteStadiumRequestResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
    };
