// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stadium_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StadiumTimeModelImpl _$$StadiumTimeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StadiumTimeModelImpl(
      id: (json['id'] as num).toInt(),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$StadiumTimeModelImplToJson(
        _$StadiumTimeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'status': instance.status,
    };
