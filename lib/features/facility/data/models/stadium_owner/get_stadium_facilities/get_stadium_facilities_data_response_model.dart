import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';

part 'get_stadium_facilities_data_response_model.freezed.dart';
part 'get_stadium_facilities_data_response_model.g.dart';

@freezed
class GetStadiumFacilitiesDataResponseModel
    with _$GetStadiumFacilitiesDataResponseModel {
  const factory GetStadiumFacilitiesDataResponseModel({
    int? id,
    @JsonKey(name: 'stadium_id') required int stadiumId,
    required String name,
    // quantity in JSON is number; use int? here to match JSON
    @JsonKey(fromJson: _quantityFromJson) required int quantity,
    // photos are an array of paths (strings)
    List<String>? photos,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'stadium') Map<String, dynamic>? stadium,
  }) = _GetStadiumFacilitiesDataResponseModel;

  factory GetStadiumFacilitiesDataResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$GetStadiumFacilitiesDataResponseModelFromJson(json);

  // helper if needed (but freezed + json_serializable can also map numbers -> int)
}

// helper to safely parse quantity that might be string or number
int _quantityFromJson(dynamic v) {
  if (v == null) return 0;
  if (v is int) return v;
  if (v is String) return int.tryParse(v) ?? 0;
  if (v is double) return v.toInt();
  return 0;
}

extension GetStadiumFacilitiesDataResponseModelX
    on GetStadiumFacilitiesDataResponseModel {
  FacilityEntity toEntity() => FacilityEntity(
        id: id,
        stadiumId: stadiumId,
        name: name,
        // convert quantity to string if your FacilityEntity expects string,
        // but better to change FacilityEntity.quantity type to int.
        quantity: quantity.toString(),
        photos: photos,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt!) : null,
      );
}
