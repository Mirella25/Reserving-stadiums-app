import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/profile_details_entity.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

// نفس الملف اللي فيه _toStringNullable

int? _toIntNullable(Object? v) {
  if (v == null) return null;
  if (v is int) return v;
  if (v is num) return v.toInt();
  return int.tryParse(v.toString());
}

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    String? birthdate,
    String? address,

    @JsonKey(name: 'phone_number', fromJson: _toStringNullable)
    String? phoneNumber,

    String? avatar,
    @JsonKey(name: 'national_id') String? nationalId,
    String? nationality,
    String? gender,
    @JsonKey(fromJson: _toIntNullable) int? height,
    @JsonKey(fromJson: _toIntNullable) int? weight,
    @JsonKey(name: 'years_of_experience', fromJson: _toIntNullable) int? yearsOfExperience,               // ✅
    @JsonKey(name: 'emergency_contact_information') String? emergencyContactInformation,
    String? injuries,
    @JsonKey(name: 'positions_played') String? positionsPlayed,
    @JsonKey(name: 'notable_achievements') String? notableAchievements,



    @JsonKey(name: 'previous_teams') String? previousTeams,
    @JsonKey(name: 'extra_notes') String? extraNotes,
    @JsonKey(name: 'created_at') String? createdAtIso,
    @JsonKey(name: 'updated_at') String? updatedAtIso,
  }) = _ProfileModel;


  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

// يقبل dynamic (int/String/null) ويرجّع String؟
String? _toStringNullable(dynamic v) => v == null ? null : v.toString();

extension ProfileModelX on ProfileModel {
  ProfileDetailsEntity toDetailsEntity() {
    DateTime? _parse(String? v) => v == null ? null : DateTime.tryParse(v);
    return ProfileDetailsEntity(
      id: id,
      userId: userId,
      firstName: firstName,
      lastName: lastName,
      birthdate: birthdate,
      address: address,
      phoneNumber: phoneNumber, // صار String? آمنة
      avatar: avatar,
      nationalId: nationalId,
      nationality: nationality,
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
      createdAt: _parse(createdAtIso),
      updatedAt: _parse(updatedAtIso),
    );
  }
}
