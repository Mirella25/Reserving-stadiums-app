import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_team_request.freezed.dart';
part 'update_team_request.g.dart';

@freezed
class UpdateTeamRequest with _$UpdateTeamRequest {
  const factory UpdateTeamRequest({
    String? name,
    @JsonKey(name: 'sport_id') int? sportId,
    @JsonKey(name: 'captin_id') int? captainId, // ⬅️ جديد
    String? logo, // إذا بدنا نمرر مسار صورة/اسم ملف
  }) = _UpdateTeamRequest;

  factory UpdateTeamRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateTeamRequestFromJson(json);
}
