// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterResponseModelImpl _$$RegisterResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterResponseModelImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: RegisterDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegisterResponseModelImplToJson(
        _$RegisterResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
