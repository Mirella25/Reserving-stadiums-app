import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'update_league_request_model.freezed.dart';
part 'update_league_request_model.g.dart';

@freezed
class UpdateLeagueRequestModel with _$UpdateLeagueRequestModel {
  const factory UpdateLeagueRequestModel({
    required String name,
    required double price,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    required String prize,
    required String status,
    required String description,
    @JsonKey(name: 'stadium_id') required int stadiumId,
  }) = _UpdateLeagueRequestModel;
  factory UpdateLeagueRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateLeagueRequestModelFromJson(json);
}
