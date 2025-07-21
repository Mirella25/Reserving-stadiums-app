// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/profile_entity.dart';
part 'create_profile_data_model.freezed.dart';
part 'create_profile_data_model.g.dart';

@freezed
class CreateProfileDataModel with _$CreateProfileDataModel {
  const factory CreateProfileDataModel({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? birthdate,
    String? address,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? gender,
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
    String? avatar,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _CreateProfileDataModel;

  factory CreateProfileDataModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProfileDataModelFromJson(json);
}

extension CreateProfileDataModelX on CreateProfileDataModel {
  ProfileEntity toEntity() => ProfileEntity(
        id: id,
        userId: userId,
        firstName: firstName,
        lastName: lastName,
        birthdate: birthdate,
        address: address,
        phoneNumber: phoneNumber,
        gender: gender,
        height: height,
        weight: weight,
        emergencyContactInformation: emergencyContactInformation,
        injuries: injuries,
        positionsPlayed: positionsPlayed,
        notableAchievements: notableAchievements,
        yearsOfExperience: yearsOfExperience,
        previousTeams: previousTeams,
        extraNotes: extraNotes,
        avatar: avatar,
        createdAt: createdAt != null ? DateTime.parse(createdAt!) : null,
        updatedAt: updatedAt != null ? DateTime.parse(updatedAt!) : null,
      );
}
