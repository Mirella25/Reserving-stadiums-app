// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacilityModelImpl _$$FacilityModelImplFromJson(Map<String, dynamic> json) =>
    _$FacilityModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FacilityModelImplToJson(_$FacilityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photos': instance.photos,
    };
