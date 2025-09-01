import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_snapshot.freezed.dart';
part 'location_snapshot.g.dart';

@freezed
class LocationSnapshot with _$LocationSnapshot {
  const factory LocationSnapshot({
    required double lat,
    required double lng,
    double? accuracy,
    @Default(null) DateTime? capturedAt,
  }) = _LocationSnapshot;

  factory LocationSnapshot.fromJson(Map<String, dynamic> json) =>
      _$LocationSnapshotFromJson(json);
}