// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_team_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InviteTeamResponseModelImpl _$$InviteTeamResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InviteTeamResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$InviteTeamResponseModelImplToJson(
        _$InviteTeamResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
    };
