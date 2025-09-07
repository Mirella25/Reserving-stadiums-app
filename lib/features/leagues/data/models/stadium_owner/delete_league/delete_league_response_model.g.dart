// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_league_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteLeagueResponseModelImpl _$$DeleteLeagueResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteLeagueResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$DeleteLeagueResponseModelImplToJson(
        _$DeleteLeagueResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
    };
