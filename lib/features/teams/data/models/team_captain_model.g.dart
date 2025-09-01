// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_captain_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamCaptainModelImpl _$$TeamCaptainModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamCaptainModelImpl(
      id: _toInt(json['id']),
      email: json['email'] as String,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$TeamCaptainModelImplToJson(
        _$TeamCaptainModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'type': instance.type,
    };
