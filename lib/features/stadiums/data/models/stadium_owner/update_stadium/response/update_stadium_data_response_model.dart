import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';

part 'update_stadium_data_response_model.freezed.dart';
part 'update_stadium_data_response_model.g.dart';

@freezed
class UpdateStadiumDataResponseModel with _$UpdateStadiumDataResponseModel {
  const factory UpdateStadiumDataResponseModel({
    required int id,
    @JsonKey(name: 'sport_id') required int sportId,
    required String name,
    required String location,
    required String description,
    @JsonKey(name: 'Length') required String length,
    @JsonKey(name: 'Width') required String width,
    @JsonKey(name: 'owner_number') required int ownerNumber,
    List<dynamic>? photos,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    required double price,
    required double deposit,
    required double latitude,
    required double longitude,
    required int duration,
  }) = _UpdateStadiumDataResponseModel;
  factory UpdateStadiumDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateStadiumDataResponseModelFromJson(json);
}

extension UpdateStadiumDataModelX on UpdateStadiumDataResponseModel {
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
        duration: duration,
      );
}
