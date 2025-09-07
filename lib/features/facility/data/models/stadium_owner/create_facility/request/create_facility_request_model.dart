import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_facility_request_model.freezed.dart';
part 'create_facility_request_model.g.dart';

@freezed
class CreateFacilityRequestModel with _$CreateFacilityRequestModel {
  const factory CreateFacilityRequestModel(
      {@JsonKey(name: 'stadium_id') required int stadiumId,
      required String name,
      required String quantity}) = _CreateFacilityRequestModel;
  factory CreateFacilityRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateFacilityRequestModelFromJson(json);
}

extension CreateFacilityRequestModelX on CreateFacilityRequestModel {
  Map<String, dynamic> toJsonNonNull() {
    final json = toJson();
    json.removeWhere((_, v) => v == null);
    return json;
  }
}
