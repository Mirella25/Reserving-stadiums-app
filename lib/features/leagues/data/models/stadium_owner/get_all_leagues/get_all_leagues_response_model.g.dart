// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_leagues_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllLeaguesResponseModelImpl _$$GetAllLeaguesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllLeaguesResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              GetAllLeaguesDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllLeaguesResponseModelImplToJson(
        _$GetAllLeaguesResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
