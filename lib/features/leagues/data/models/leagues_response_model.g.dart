// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leagues_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaguesResponseModelImpl _$$LeaguesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaguesResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => LeagueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LeaguesResponseModelImplToJson(
        _$LeaguesResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
