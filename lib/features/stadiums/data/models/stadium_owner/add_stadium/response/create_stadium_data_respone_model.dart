// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../../domain/entities/stadium_owner/stadium_entity.dart';

part 'create_stadium_data_respone_model.freezed.dart';
part 'create_stadium_data_respone_model.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class CreateStadiumDataResponeModel with _$CreateStadiumDataResponeModel {
  factory CreateStadiumDataResponeModel({
    required int id,
    @JsonKey(name: 'sport_id') required int sportId,
    required String name,
    required String location,
    required String description,
    @JsonKey(name: 'Length') required String length,
    @JsonKey(name: 'Width') required String width,
    @JsonKey(name: 'owner_number') required int ownerNumber,
    List<String>? photos,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    required String price,
    required String deposit,
    required String latitude,
    required String longitude,
    required int duration,
  }) = _CreateStadiumDataResponeModel;
  factory CreateStadiumDataResponeModel.fromJson(Map<String, dynamic> json) =>
      _$CreateStadiumDataResponeModelFromJson(json);
}

extension CreateStadiumDataModelX on CreateStadiumDataResponeModel {
  StadiumEntity toEntity() => StadiumEntity(
      id: id,
      sportId: sportId,
      name: name,
      location: location,
      description: description,
      length: length,
      width: width,
      ownerNumber: ownerNumber,
      photos: photos,
      userId: userId,
      createdAt: DateTime.parse(createdAt),
      updatedAt: DateTime.parse(updatedAt),
      startTime: startTime,
      endTime: endTime,
      price: price,
      deposit: deposit,
      latitude: latitude,
      longitude: longitude,
      duration: duration);
}
