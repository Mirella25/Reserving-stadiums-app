// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDataModelImpl _$$LoginDataModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataModelImpl(
      token: json['token'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginDataModelImplToJson(
        _$LoginDataModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };
