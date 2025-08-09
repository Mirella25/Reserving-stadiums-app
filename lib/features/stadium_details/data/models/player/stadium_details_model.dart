import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/player/stadium_details_entity.dart';

part 'stadium_details_model.freezed.dart';
part 'stadium_details_model.g.dart';

@freezed
class StadiumDetailsModel with _$StadiumDetailsModel {
  const factory StadiumDetailsModel({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'sport_id') required int sportId,
    required String name,
    required String location,
    required String description,
    List<String>? photos,
    @JsonKey(name: 'Length') required String length,
    @JsonKey(name: 'Width') required String width,
    @JsonKey(name: 'owner_number') required int ownerNumber,
    @JsonKey(fromJson: _toDouble) required double latitude,
    @JsonKey(fromJson: _toDouble) required double longitude,
  }) = _StadiumDetailsModel;

  factory StadiumDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$StadiumDetailsModelFromJson(json);
}

double _toDouble(dynamic value) {
  if (value == null) return 0.0;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value) ?? 0.0;
  return 0.0;
}

extension StadiumDetailsModelMapper on StadiumDetailsModel {
  StadiumDetailsEntity toEntity() {
    return StadiumDetailsEntity(
      id: id,
      userId: userId,
      sportId: sportId,
      name: name,
      location: location,
      description: description,
      photos: photos ?? [],
      length: length,
      width: width,
      ownerNumber: ownerNumber,
      latitude: latitude,
      longitude: longitude,
    );
  }
}
