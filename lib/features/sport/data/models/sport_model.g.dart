// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SportModelImpl _$$SportModelImplFromJson(Map<String, dynamic> json) =>
    _$SportModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      photoUrl: json['photo'] as String,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SportModelImplToJson(_$SportModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photoUrl,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
