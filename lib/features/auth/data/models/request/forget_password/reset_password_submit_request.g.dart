// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_submit_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordSubmitRequestImpl _$$ResetPasswordSubmitRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordSubmitRequestImpl(
      token: json['token'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$$ResetPasswordSubmitRequestImplToJson(
        _$ResetPasswordSubmitRequestImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
