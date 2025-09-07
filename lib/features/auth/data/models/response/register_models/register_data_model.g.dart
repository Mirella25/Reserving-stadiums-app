// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterDataModelImpl _$$RegisterDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterDataModelImpl(
      role: json['role'] as String,
      onboardingUrl: _toNullableString(json['onboarding_url']),
    );

Map<String, dynamic> _$$RegisterDataModelImplToJson(
        _$RegisterDataModelImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'onboarding_url': instance.onboardingUrl,
    };
