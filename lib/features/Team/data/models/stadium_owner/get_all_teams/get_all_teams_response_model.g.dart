// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_teams_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllTeamsResponseModelImpl _$$GetAllTeamsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllTeamsResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              GetAllTeamsDataResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllTeamsResponseModelImplToJson(
        _$GetAllTeamsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
