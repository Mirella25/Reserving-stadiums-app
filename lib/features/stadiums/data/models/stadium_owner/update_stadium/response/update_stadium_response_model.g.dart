// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_stadium_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateStadiumResponseModelImpl _$$UpdateStadiumResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateStadiumResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data: UpdateStadiumDataWrapper.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateStadiumResponseModelImplToJson(
        _$UpdateStadiumResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$UpdateStadiumDataWrapperImpl _$$UpdateStadiumDataWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateStadiumDataWrapperImpl(
      stadium: UpdateStadiumDataResponseModel.fromJson(
          json['Stadium'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateStadiumDataWrapperImplToJson(
        _$UpdateStadiumDataWrapperImpl instance) =>
    <String, dynamic>{
      'Stadium': instance.stadium,
    };
