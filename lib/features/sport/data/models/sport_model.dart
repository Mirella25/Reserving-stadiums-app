// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/sport/domain/entities/sport_entity.dart';

part 'sport_model.freezed.dart';
part 'sport_model.g.dart';

@freezed
class SportModel with _$SportModel {
  const factory SportModel({
    required int id,
    required String name,
    @JsonKey(name: 'photo') required String photoUrl,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SportModel;
  factory SportModel.fromJson(Map<String, dynamic> json) =>
      _$SportModelFromJson(json);
}

extension SportModelX on SportModel {
  SportEntity toEntity() => SportEntity(
        id: id,
        name: name,
        photoUrl: photoUrl,
      );
}
