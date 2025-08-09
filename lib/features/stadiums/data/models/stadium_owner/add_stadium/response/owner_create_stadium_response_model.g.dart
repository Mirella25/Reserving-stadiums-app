// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_create_stadium_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerCreateStadiumResponseModelImpl
    _$$OwnerCreateStadiumResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$OwnerCreateStadiumResponseModelImpl(
          status: json['status'] as bool,
          statusCode: (json['status_code'] as num).toInt(),
          message: json['message'] as String?,
          data: OwnerCreateStadiumDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$OwnerCreateStadiumResponseModelImplToJson(
        _$OwnerCreateStadiumResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
