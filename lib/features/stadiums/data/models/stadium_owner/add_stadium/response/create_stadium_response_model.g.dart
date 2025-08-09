// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_stadium_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateStadiumResponseModelImpl _$$CreateStadiumResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateStadiumResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data: CreateStadiumDataResponeModel.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateStadiumResponseModelImplToJson(
        _$CreateStadiumResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
