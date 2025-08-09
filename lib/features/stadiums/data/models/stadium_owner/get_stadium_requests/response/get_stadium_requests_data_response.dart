import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../../domain/entities/stadium_owner/stadium_entity.dart';

part 'get_stadium_requests_data_response.freezed.dart';
part 'get_stadium_requests_data_response.g.dart';

@freezed
class GetStadiumRequestsDataResponse with _$GetStadiumRequestsDataResponse {
  const factory GetStadiumRequestsDataResponse({
    int? id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'sport_id') required int sportId,
    required String name,
    required String location,
    required String description,
    List<String>? photos,
    @JsonKey(name: 'Length') required String length,
    @JsonKey(name: 'Width') required String width,
    @JsonKey(name: 'owner_number') required int ownerNumber,
    String? status,
    @JsonKey(name: 'admin_notes') String? adminNotes,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    required String price,
    required String deposit,
    required String latitude,
    required String longitude,
    required int duration,
  }) = _GetStadiumRequestsDataResponse;
  factory GetStadiumRequestsDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetStadiumRequestsDataResponseFromJson(json);
}

extension StadiumRequestDataModelX on GetStadiumRequestsDataResponse {
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
      statusRequest: status,
      adminNotes: adminNotes,
      createdAt: DateTime.parse(createdAt!),
      updatedAt: DateTime.parse(updatedAt!),
      deposit: deposit,
      duration: duration,
      endTime: endTime,
      price: price,
      startTime: startTime,
      latitude: latitude,
      longitude: longitude);
}
