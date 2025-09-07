import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';

part 'create_league_response_data_model.freezed.dart';
part 'create_league_response_data_model.g.dart';

@freezed
class CreateLeagueResponseDataModel with _$CreateLeagueResponseDataModel {
  const factory CreateLeagueResponseDataModel({
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
  }) = _CreateLeagueResponseDataModel;
  factory CreateLeagueResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$CreateLeagueResponseDataModelFromJson(json);
}

extension CreateLeagueResponseDataModelX on CreateLeagueResponseDataModel {
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
