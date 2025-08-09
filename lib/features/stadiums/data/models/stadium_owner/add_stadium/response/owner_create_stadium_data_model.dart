// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../../domain/entities/stadium_owner/stadium_entity.dart';

part 'owner_create_stadium_data_model.freezed.dart';
part 'owner_create_stadium_data_model.g.dart';

@freezed

class OwnerCreateStadiumDataModel with _$OwnerCreateStadiumDataModel {
  factory OwnerCreateStadiumDataModel({
    required int id,
    @JsonKey(name: 'sport_id') required String sportId,
    required String name,
    required String location,
    required String description,
    @JsonKey(name: 'Length') required String length,
    @JsonKey(name: 'Width') required String width,
    @JsonKey(name: 'owner_number') required String ownerNumber,
    List<String>? photos,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _OwnerCreateStadiumDataModel;

  factory OwnerCreateStadiumDataModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerCreateStadiumDataModelFromJson(json);
}

extension OwnerCreateStadiumDataModelX on OwnerCreateStadiumDataModel {
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
  );
}
