import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';

part 'get_stadium_request_details_data_response_model.freezed.dart';
part 'get_stadium_request_details_data_response_model.g.dart';

@freezed
class GetStadiumRequestDetailsDataResponseModel
    with _$GetStadiumRequestDetailsDataResponseModel {
  const factory GetStadiumRequestDetailsDataResponseModel({
    int? id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'sport_id') required int sportId,
    required String name,
    required String location,
    required String description,
    List<dynamic>? photos,
    @JsonKey(name: 'Length') required String length,
    @JsonKey(name: 'Width') required String width,
    @JsonKey(name: 'owner_number') required int ownerNumber,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    @JsonKey(name: 'status') required String statusRequest,
    @JsonKey(name: 'admin_notes') String? adminNotes,
    required double price,
    required double deposit,
    required double latitude,
    required double longitude,
    required int duration,
  }) = _GetStadiumRequestDetailsDataResponseModel;
  factory GetStadiumRequestDetailsDataResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$GetStadiumRequestDetailsDataResponseModelFromJson(json);
}

extension StadiumDataModelX on GetStadiumRequestDetailsDataResponseModel {
  StadiumEntity toEntity() => StadiumEntity(
      id: id,
      userId: userId,
      sportId: sportId,
      name: name,
      location: location,
      description: description,
      photos: photos,
      length: length,
      width: width,
      ownerNumber: ownerNumber,
      createdAt: DateTime.parse(createdAt!),
      updatedAt: DateTime.parse(updatedAt!),
      deposit: deposit,
      duration: duration,
      statusRequest: statusRequest,
      adminNotes: adminNotes,
      endTime: endTime,
      price: price,
      startTime: startTime,
      latitude: latitude,
      longitude: longitude);
}
