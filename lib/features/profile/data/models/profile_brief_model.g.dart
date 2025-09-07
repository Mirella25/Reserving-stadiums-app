// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_brief_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileBriefModelImpl _$$ProfileBriefModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileBriefModelImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$ProfileBriefModelImplToJson(
        _$ProfileBriefModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };
