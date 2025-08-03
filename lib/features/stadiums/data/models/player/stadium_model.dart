import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/player/stadium_entity.dart';

part 'stadium_model.freezed.dart';
part 'stadium_model.g.dart';

@freezed
class StadiumModel with _$StadiumModel {
  const factory StadiumModel({
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
  }) = _StadiumModel;

  factory StadiumModel.fromJson(Map<String, dynamic> json) =>
      _$StadiumModelFromJson(json);

}
extension StadiumModelMapper on StadiumModel {
  StadiumEntity toEntity() {
    return StadiumEntity(
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
    );
  }
}
