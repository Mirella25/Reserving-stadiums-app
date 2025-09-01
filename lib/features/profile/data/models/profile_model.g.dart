// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      birthdate: json['birthdate'] as String?,
      address: json['address'] as String?,
      phoneNumber: _toStringNullable(json['phone_number']),
      avatar: json['avatar'] as String?,
      nationalId: json['national_id'] as String?,
      nationality: json['nationality'] as String?,
      gender: json['gender'] as String?,
      height: _toIntNullable(json['height']),
      weight: _toIntNullable(json['weight']),
      yearsOfExperience: _toIntNullable(json['years_of_experience']),
      emergencyContactInformation:
          json['emergency_contact_information'] as String?,
      injuries: json['injuries'] as String?,
      positionsPlayed: json['positions_played'] as String?,
      notableAchievements: json['notable_achievements'] as String?,
      previousTeams: json['previous_teams'] as String?,
      extraNotes: json['extra_notes'] as String?,
      createdAtIso: json['created_at'] as String?,
      updatedAtIso: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'birthdate': instance.birthdate,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'avatar': instance.avatar,
      'national_id': instance.nationalId,
      'nationality': instance.nationality,
      'gender': instance.gender,
      'height': instance.height,
      'weight': instance.weight,
      'years_of_experience': instance.yearsOfExperience,
      'emergency_contact_information': instance.emergencyContactInformation,
      'injuries': instance.injuries,
      'positions_played': instance.positionsPlayed,
      'notable_achievements': instance.notableAchievements,
      'previous_teams': instance.previousTeams,
      'extra_notes': instance.extraNotes,
      'created_at': instance.createdAtIso,
      'updated_at': instance.updatedAtIso,
    };
