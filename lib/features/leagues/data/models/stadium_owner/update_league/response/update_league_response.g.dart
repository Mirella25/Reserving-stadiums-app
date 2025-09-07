// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_league_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateLeagueResponseImpl _$$UpdateLeagueResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateLeagueResponseImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data: UpdateLeagueDataResponseModel.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateLeagueResponseImplToJson(
        _$UpdateLeagueResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
