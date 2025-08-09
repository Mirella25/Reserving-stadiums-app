// lib/features/stadium_details/data/models/facility_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/player/facility_entity.dart';

part 'facility_model.freezed.dart';
part 'facility_model.g.dart';

@freezed
class FacilityModel with _$FacilityModel {
  const factory FacilityModel({
    required int id,
    required String name,
    List<String>? photos,
  }) = _FacilityModel;

  factory FacilityModel.fromJson(Map<String, dynamic> json) => _$FacilityModelFromJson(json);
}

extension FacilityModelMapper on FacilityModel {
  FacilityEntity toEntity() => FacilityEntity(
    id: id,
    name: name,
    photos: photos ?? [],
  );
}
