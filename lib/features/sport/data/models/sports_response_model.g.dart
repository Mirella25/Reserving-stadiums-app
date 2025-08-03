// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sports_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SportsResponseModelImpl _$$SportsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SportsResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data: SportsContainer.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SportsResponseModelImplToJson(
        _$SportsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$SportsContainerImpl _$$SportsContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$SportsContainerImpl(
      sports: (json['Sports:'] as List<dynamic>)
          .map((e) => SportModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SportsContainerImplToJson(
        _$SportsContainerImpl instance) =>
    <String, dynamic>{
      'Sports:': instance.sports,
    };
