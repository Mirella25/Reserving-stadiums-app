// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDataModelImpl _$$LoginDataModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataModelImpl(
      token: json['token'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      profileId: (json['profile_id'] as num?)?.toInt() ?? 0,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$LoginDataModelImplToJson(
        _$LoginDataModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
      'profile_id': instance.profileId,
      'roles': instance.roles,
    };
