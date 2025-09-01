// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_snapshot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationSnapshotImpl _$$LocationSnapshotImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationSnapshotImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      accuracy: (json['accuracy'] as num?)?.toDouble(),
      capturedAt: json['capturedAt'] == null
          ? null
          : DateTime.parse(json['capturedAt'] as String),
    );

Map<String, dynamic> _$$LocationSnapshotImplToJson(
        _$LocationSnapshotImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'accuracy': instance.accuracy,
      'capturedAt': instance.capturedAt?.toIso8601String(),
    };
