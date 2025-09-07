// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_league_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateLeagueResponseModelImpl _$$CreateLeagueResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateLeagueResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data: CreateLeagueResponseDataModel.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateLeagueResponseModelImplToJson(
        _$CreateLeagueResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
