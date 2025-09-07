import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'update_stadium_request_model.freezed.dart';
part 'update_stadium_request_model.g.dart';

@freezed
class UpdateStadiumRequestModel with _$UpdateStadiumRequestModel {
  const factory UpdateStadiumRequestModel({
    @JsonKey(name: 'sport_id') required int sportId,
    required String name,
    required String location,
    required String description,
    @JsonKey(name: 'Length') required String length,
    @JsonKey(name: 'Width') required String width,
    @JsonKey(name: 'owner_number') required int ownerNumber,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    required double price,
    required double deposit,
    required int duration,
    required double latitude,
    required double longitude,
  }) = _UpdateStadiumRequestModel;
  factory UpdateStadiumRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateStadiumRequestModelFromJson(json);
}

extension UpdateStadiumRequestModelX on UpdateStadiumRequestModel {
  Map<String, dynamic> toJsonNonNull() {
    final json = toJson();
    json.removeWhere((_, v) => v == null);
    return json;
  }
}
