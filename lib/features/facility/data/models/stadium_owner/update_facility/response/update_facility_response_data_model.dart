import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';

part 'update_facility_response_data_model.freezed.dart';
part 'update_facility_response_data_model.g.dart';

/// Helper: parse int from dynamic (String or int)
int _parseInt(dynamic v) {
  if (v == null) return 0;
  if (v is int) return v;
  return int.tryParse(v.toString()) ?? 0;
}

/// Helper: parse optional String from dynamic
String? _parseNullableString(dynamic v) {
  if (v == null) return null;
  return v.toString();
}

/// Helper: parse list of photos to List<String>?
List<String>? _parsePhotos(dynamic v) {
  if (v == null) return null;
  if (v is List) {
    return v
        .map((e) => e?.toString() ?? '')
        .where((s) => s.isNotEmpty)
        .toList();
  }
  // sometimes backend returns single string
  if (v is String && v.isNotEmpty) return [v];
  return null;
}

/// Helper: parse datetime string to DateTime?
DateTime? _parseDateTime(dynamic v) {
  if (v == null) return null;
  final s = v.toString();
  return DateTime.tryParse(s);
}

@freezed
class UpdateFacilityResponseDataModel with _$UpdateFacilityResponseDataModel {
  const factory UpdateFacilityResponseDataModel({
    int? id,
    @JsonKey(name: 'stadium_id', fromJson: _parseInt) required int stadiumId,
    required String name,

    /// quantity may be absent in some responses -> keep nullable
    @JsonKey(fromJson: _parseNullableString) String? quantity,
    @JsonKey(fromJson: _parsePhotos) List<String>? photos,
    @JsonKey(name: 'created_at', fromJson: _parseDateTime) DateTime? createdAt,
    @JsonKey(name: 'updated_at', fromJson: _parseDateTime) DateTime? updatedAt,

    /// stadium payload - keep as raw map so caller decides how to map it.
    /// (If you prefer, you can map this to StadiumEntity with a custom parser.)
    @JsonKey(name: 'stadium') Map<String, dynamic>? stadium,
  }) = _UpdateFacilityResponseDataModel;
  factory UpdateFacilityResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateFacilityResponseDataModelFromJson(json);
}

extension UpdateFacilityResponseDataModelX on UpdateFacilityResponseDataModel {
  FacilityEntity toEntity() => FacilityEntity(
        id: id,
        stadiumId: stadiumId,
        name: name,
        quantity: quantity ?? '',
        photos: photos,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
