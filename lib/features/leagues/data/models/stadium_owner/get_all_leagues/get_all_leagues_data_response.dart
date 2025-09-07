import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';

part 'get_all_leagues_data_response.freezed.dart';
part 'get_all_leagues_data_response.g.dart';

/// Helpers to safely parse JSON fields that might be strings or numbers.
double _toDouble(dynamic value) {
  if (value == null) return 0.0;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  final s = value.toString();
  return double.tryParse(s) ?? 0.0;
}

int _toInt(dynamic value) {
  if (value == null) return 0;
  if (value is int) return value;
  if (value is double) return value.toInt();
  final s = value.toString();
  return int.tryParse(s) ?? 0;
}

String? _toNullableString(dynamic value) {
  if (value == null) return null;
  return value.toString();
}

@freezed
class GetAllLeaguesDataResponse with _$GetAllLeaguesDataResponse {
  const factory GetAllLeaguesDataResponse({
    required int id,
    required String name,
    @JsonKey(fromJson: _toDouble) required double price,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    required String prize,
    required String status,
    required String description,
    @JsonKey(name: 'stadium_id', fromJson: _toInt) required int stadiumId,
    @JsonKey(name: 'created_at', fromJson: _toNullableString) String? createdAt,
    @JsonKey(name: 'updated_at', fromJson: _toNullableString) String? updatedAt,
    @JsonKey(name: 'created_by', fromJson: _toInt) int? createdBy,
  }) = _GetAllLeaguesDataResponse;

  factory GetAllLeaguesDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllLeaguesDataResponseFromJson(json);
}

extension GetAllLeaguesDataResponseX on GetAllLeaguesDataResponse {
  LeagueEntity toEntity() => LeagueEntity(
        id: id,
        stadiumId: stadiumId,
        name: name,
        price: price,
        prize: prize,
        startDate: startDate,
        endDate: endDate,
        status: status,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt!) : null,
        createdBy: createdBy,
        description: description,
      );
}
