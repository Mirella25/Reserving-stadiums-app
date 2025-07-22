// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProfileRequestModelImpl _$$CreateProfileRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProfileRequestModelImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      birthdate: json['birthdate'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      gender: json['gender'] as String?,
      mine: json['mine'] as String?,
      sport: json['Sport'] as String?,
      height: json['height'] as String?,
      weight: json['weight'] as String?,
      emergencyContactInformation:
          json['emergency_contact_information'] as String?,
      injuries: json['injuries'] as String?,
      positionsPlayed: json['positions_played'] as String?,
      notableAchievements: json['notable_achievements'] as String?,
      yearsOfExperience: json['years_of_experience'] as String?,
      previousTeams: json['previous_teams'] as String?,
      extraNotes: json['extra_notes'] as String?,
    );

Map<String, dynamic> _$$CreateProfileRequestModelImplToJson(
        _$CreateProfileRequestModelImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'birthdate': instance.birthdate,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'gender': instance.gender,
      'mine': instance.mine,
      'Sport': instance.sport,
      'height': instance.height,
      'weight': instance.weight,
      'emergency_contact_information': instance.emergencyContactInformation,
      'injuries': instance.injuries,
      'positions_played': instance.positionsPlayed,
      'notable_achievements': instance.notableAchievements,
      'years_of_experience': instance.yearsOfExperience,
      'previous_teams': instance.previousTeams,
      'extra_notes': instance.extraNotes,
    };
