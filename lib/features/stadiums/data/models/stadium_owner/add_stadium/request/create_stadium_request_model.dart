// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_stadium_request_model.freezed.dart';
part 'create_stadium_request_model.g.dart';

@freezed
class CreateStadiumRequestModel with _$CreateStadiumRequestModel {
  const factory CreateStadiumRequestModel({
    @JsonKey(name: 'sport_id') required String sportId,
    required String name,
    required String location,
    required String description,
    @JsonKey(name: 'Length') required String length,
    @JsonKey(name: 'Width') required String width,
    @JsonKey(name: 'owner_number') required String ownerNumber,
  }) = _CreateStadiumRequestModel;
  factory CreateStadiumRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateStadiumRequestModelFromJson(json);
}

extension CreateStadiumRequestModelX on CreateStadiumRequestModel {
  Map<String, dynamic> toJsonNonNull() {
    final json = toJson();
    json.removeWhere((_, v) => v == null);
    return json;
  }
}
