import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'get_stadium_requests_data_response.dart';

part 'get_stadium_requests_response.freezed.dart';
part 'get_stadium_requests_response.g.dart';

@freezed
class GetStadiumRequestsResponse with _$GetStadiumRequestsResponse {
  const factory GetStadiumRequestsResponse({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    String? message,
    required List<GetStadiumRequestsDataResponse> data,
  }) = _GetStadiumRequestsResponse;
  factory GetStadiumRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetStadiumRequestsResponseFromJson(json);
}
