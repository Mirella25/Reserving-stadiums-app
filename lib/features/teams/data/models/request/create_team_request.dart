import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_team_request.freezed.dart';
part 'create_team_request.g.dart';

@freezed
class CreateTeamRequest with _$CreateTeamRequest {
  const factory CreateTeamRequest({
    required String name,
    @JsonKey(name: 'captin_id') required int captainId,
    @JsonKey(name: 'sport_id') required int sportId,
    @JsonKey(includeToJson: false) String? logoPath, // local file path
  }) = _CreateTeamRequest;

  factory CreateTeamRequest.fromJson(Map<String, dynamic> json)
  => _$CreateTeamRequestFromJson(json);
}
