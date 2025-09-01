import 'package:freezed_annotation/freezed_annotation.dart';
import 'league_model.dart';

part 'leagues_response_model.freezed.dart';
part 'leagues_response_model.g.dart';

@freezed
class LeaguesResponseModel with _$LeaguesResponseModel {
  const factory LeaguesResponseModel({
    required bool status,
    @JsonKey(name: 'status_code') required int statusCode,
    required String message,
    required List<LeagueModel> data,
  }) = _LeaguesResponseModel;

  factory LeaguesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LeaguesResponseModelFromJson(json);
}
