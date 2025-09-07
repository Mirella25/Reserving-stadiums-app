import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_league_request_model.freezed.dart';
part 'create_league_request_model.g.dart';

@freezed
class CreateLeagueRequestModel with _$CreateLeagueRequestModel {
  const factory CreateLeagueRequestModel({
    required String name,
    required double price,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    required String prize,
    required String status,
    required String description,
    @JsonKey(name: 'stadium_id') required int stadiumId,
  }) = _CreateLeagueRequestModel;
  factory CreateLeagueRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateLeagueRequestModelFromJson(json);
}
