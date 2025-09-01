import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_update_request.freezed.dart';
part 'profile_update_request.g.dart';

@freezed
class ProfileUpdateRequest with _$ProfileUpdateRequest {
  @JsonSerializable(includeIfNull: false) // ❗️لا تبعت nulls
  const factory ProfileUpdateRequest({
    String? address,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    int? height,
    int? weight,
    @JsonKey(name: 'positions_played') String? positionsPlayed,
    String? injuries,
    @JsonKey(name: 'years_of_experience') int? yearsOfExperience,
  }) = _ProfileUpdateRequest;

  factory ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateRequestFromJson(json);
}
