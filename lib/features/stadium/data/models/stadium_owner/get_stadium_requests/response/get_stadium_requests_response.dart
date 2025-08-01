import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/stadium/data/models/stadium_owner/get_stadium_requests/response/get_stadium_requests_data_response.dart';

part 'get_stadium_requests_response.freezed.dart';
part 'get_stadium_requests_response.g.dart';

@freezed
class GetStadiumRequestsResponse with _$GetStadiumRequestsResponse {
  const factory GetStadiumRequestsResponse({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required RequestsDataContainer data,
  }) = _GetStadiumRequestsResponse;
  factory GetStadiumRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetStadiumRequestsResponseFromJson(json);
}

@freezed
class RequestsDataContainer with _$RequestsDataContainer {
  const factory RequestsDataContainer({
    @JsonKey(name: 'Asks') required List<GetStadiumRequestsDataResponse> asks,
  }) = _RequestsDataContainer;

  factory RequestsDataContainer.fromJson(Map<String, dynamic> json) =>
      _$RequestsDataContainerFromJson(json);
}
