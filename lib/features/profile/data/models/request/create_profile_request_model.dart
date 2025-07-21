// lib/features/profile/data/models/request/create_profile_request_model.dart

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_profile_request_model.freezed.dart';
part 'create_profile_request_model.g.dart';

@freezed
class CreateProfileRequestModel with _$CreateProfileRequestModel {
  const factory CreateProfileRequestModel({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? birthdate,
    String? address,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? gender,
    String? mine,
    String? sport,
    String? height,
    String? weight,
    @JsonKey(name: 'emergency_contact_information')
    String? emergencyContactInformation,
    String? injuries,
    @JsonKey(name: 'positions_played') String? positionsPlayed,
    @JsonKey(name: 'notable_achievements') String? notableAchievements,
    @JsonKey(name: 'years_of_experience') String? yearsOfExperience,
    @JsonKey(name: 'previous_teams') String? previousTeams,
    @JsonKey(name: 'extra_notes') String? extraNotes,
  }) = _CreateProfileRequestModel;

  factory CreateProfileRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProfileRequestModelFromJson(json);
}

extension CreateProfileRequestModelX on CreateProfileRequestModel {
  Map<String, dynamic> toJsonNonNull() {
    final data = toJson();
    data.removeWhere((key, value) => value == null);
    return data;
  }
}
