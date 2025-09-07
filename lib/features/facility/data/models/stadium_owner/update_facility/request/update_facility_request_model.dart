import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'update_facility_request_model.freezed.dart';
part 'update_facility_request_model.g.dart';

@freezed
class UpdateFacilityRequestModel with _$UpdateFacilityRequestModel {
  const factory UpdateFacilityRequestModel(
      {@JsonKey(name: 'stadium_id') required int stadiumId,
      required String name,
      required String quantity}) = _UpdateFacilityRequestModel;
  factory UpdateFacilityRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateFacilityRequestModelFromJson(json);
}

extension UpdateFacilityRequestModelX on UpdateFacilityRequestModel {
  Map<String, dynamic> toJsonNonNull() {
    final json = toJson();
    json.removeWhere((_, v) => v == null);
    return json;
  }
}
