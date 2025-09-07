// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_stadiums_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllStadiumsResponseModelImpl _$$GetAllStadiumsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllStadiumsResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) => GetAllStadiumsDataResponseModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllStadiumsResponseModelImplToJson(
        _$GetAllStadiumsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
