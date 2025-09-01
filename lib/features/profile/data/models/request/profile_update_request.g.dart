// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileUpdateRequestImpl _$$ProfileUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileUpdateRequestImpl(
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      height: (json['height'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
      positionsPlayed: json['positions_played'] as String?,
      injuries: json['injuries'] as String?,
      yearsOfExperience: (json['years_of_experience'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProfileUpdateRequestImplToJson(
        _$ProfileUpdateRequestImpl instance) =>
    <String, dynamic>{
      if (instance.address case final value?) 'address': value,
      if (instance.phoneNumber case final value?) 'phone_number': value,
      if (instance.height case final value?) 'height': value,
      if (instance.weight case final value?) 'weight': value,
      if (instance.positionsPlayed case final value?) 'positions_played': value,
      if (instance.injuries case final value?) 'injuries': value,
      if (instance.yearsOfExperience case final value?)
        'years_of_experience': value,
    };
