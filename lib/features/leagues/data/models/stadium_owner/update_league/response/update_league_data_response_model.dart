import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart'
    show LeagueEntity;

part 'update_league_data_response_model.freezed.dart';
part 'update_league_data_response_model.g.dart';

@freezed
class UpdateLeagueDataResponseModel with _$UpdateLeagueDataResponseModel {
  const factory UpdateLeagueDataResponseModel({
    required int id,
    required String name,
    required double price,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    required String prize,
    required String status,
    required String description,
    @JsonKey(name: 'stadium_id') required int stadiumId,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') int? createdBy,
  }) = _UpdateLeagueDataResponseModel;
  factory UpdateLeagueDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateLeagueDataResponseModelFromJson(json);
}

extension UpdateLeagueDataResponseModelX on UpdateLeagueDataResponseModel {
  LeagueEntity toEntity() => LeagueEntity(
        id: id,
        name: name,
        createdAt: DateTime.parse(createdAt!),
        updatedAt: DateTime.parse(updatedAt!),
        price: price,
        startDate: startDate,
        endDate: endDate,
        prize: prize,
        status: status,
        stadiumId: stadiumId,
        description: description,
      );
}
