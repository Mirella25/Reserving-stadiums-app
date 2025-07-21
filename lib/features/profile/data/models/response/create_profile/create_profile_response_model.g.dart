// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProfileResponseModelImpl _$$CreateProfileResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProfileResponseModelImpl(
      status: json['status'] as bool,
      statusCode: (json['status_code'] as num).toInt(),
      message: json['message'] as String?,
      data: ProfileDataContainer.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateProfileResponseModelImplToJson(
        _$CreateProfileResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$ProfileDataContainerImpl _$$ProfileDataContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileDataContainerImpl(
      profile: CreateProfileDataModel.fromJson(
          json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileDataContainerImplToJson(
        _$ProfileDataContainerImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
    };
