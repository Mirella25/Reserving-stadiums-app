// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_profile_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateProfileResponseModel _$CreateProfileResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateProfileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateProfileResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ProfileDataContainer get data => throw _privateConstructorUsedError;

  /// Serializes this CreateProfileResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateProfileResponseModelCopyWith<CreateProfileResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProfileResponseModelCopyWith<$Res> {
  factory $CreateProfileResponseModelCopyWith(CreateProfileResponseModel value,
          $Res Function(CreateProfileResponseModel) then) =
      _$CreateProfileResponseModelCopyWithImpl<$Res,
          CreateProfileResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      ProfileDataContainer data});

  $ProfileDataContainerCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateProfileResponseModelCopyWithImpl<$Res,
        $Val extends CreateProfileResponseModel>
    implements $CreateProfileResponseModelCopyWith<$Res> {
  _$CreateProfileResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileDataContainer,
    ) as $Val);
  }

  /// Create a copy of CreateProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDataContainerCopyWith<$Res> get data {
    return $ProfileDataContainerCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateProfileResponseModelImplCopyWith<$Res>
    implements $CreateProfileResponseModelCopyWith<$Res> {
  factory _$$CreateProfileResponseModelImplCopyWith(
          _$CreateProfileResponseModelImpl value,
          $Res Function(_$CreateProfileResponseModelImpl) then) =
      __$$CreateProfileResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      ProfileDataContainer data});

  @override
  $ProfileDataContainerCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateProfileResponseModelImplCopyWithImpl<$Res>
    extends _$CreateProfileResponseModelCopyWithImpl<$Res,
        _$CreateProfileResponseModelImpl>
    implements _$$CreateProfileResponseModelImplCopyWith<$Res> {
  __$$CreateProfileResponseModelImplCopyWithImpl(
      _$CreateProfileResponseModelImpl _value,
      $Res Function(_$CreateProfileResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$CreateProfileResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileDataContainer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProfileResponseModelImpl implements _CreateProfileResponseModel {
  const _$CreateProfileResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$CreateProfileResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateProfileResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final ProfileDataContainer data;

  @override
  String toString() {
    return 'CreateProfileResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProfileResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, statusCode, message, data);

  /// Create a copy of CreateProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProfileResponseModelImplCopyWith<_$CreateProfileResponseModelImpl>
      get copyWith => __$$CreateProfileResponseModelImplCopyWithImpl<
          _$CreateProfileResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProfileResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CreateProfileResponseModel
    implements CreateProfileResponseModel {
  const factory _CreateProfileResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final ProfileDataContainer data}) =
      _$CreateProfileResponseModelImpl;

  factory _CreateProfileResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreateProfileResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  ProfileDataContainer get data;

  /// Create a copy of CreateProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProfileResponseModelImplCopyWith<_$CreateProfileResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileDataContainer _$ProfileDataContainerFromJson(Map<String, dynamic> json) {
  return _ProfileDataContainer.fromJson(json);
}

/// @nodoc
mixin _$ProfileDataContainer {
  CreateProfileDataModel get profile => throw _privateConstructorUsedError;

  /// Serializes this ProfileDataContainer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileDataContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDataContainerCopyWith<ProfileDataContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataContainerCopyWith<$Res> {
  factory $ProfileDataContainerCopyWith(ProfileDataContainer value,
          $Res Function(ProfileDataContainer) then) =
      _$ProfileDataContainerCopyWithImpl<$Res, ProfileDataContainer>;
  @useResult
  $Res call({CreateProfileDataModel profile});

  $CreateProfileDataModelCopyWith<$Res> get profile;
}

/// @nodoc
class _$ProfileDataContainerCopyWithImpl<$Res,
        $Val extends ProfileDataContainer>
    implements $ProfileDataContainerCopyWith<$Res> {
  _$ProfileDataContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDataContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as CreateProfileDataModel,
    ) as $Val);
  }

  /// Create a copy of ProfileDataContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateProfileDataModelCopyWith<$Res> get profile {
    return $CreateProfileDataModelCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDataContainerImplCopyWith<$Res>
    implements $ProfileDataContainerCopyWith<$Res> {
  factory _$$ProfileDataContainerImplCopyWith(_$ProfileDataContainerImpl value,
          $Res Function(_$ProfileDataContainerImpl) then) =
      __$$ProfileDataContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateProfileDataModel profile});

  @override
  $CreateProfileDataModelCopyWith<$Res> get profile;
}

/// @nodoc
class __$$ProfileDataContainerImplCopyWithImpl<$Res>
    extends _$ProfileDataContainerCopyWithImpl<$Res, _$ProfileDataContainerImpl>
    implements _$$ProfileDataContainerImplCopyWith<$Res> {
  __$$ProfileDataContainerImplCopyWithImpl(_$ProfileDataContainerImpl _value,
      $Res Function(_$ProfileDataContainerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$ProfileDataContainerImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as CreateProfileDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDataContainerImpl implements _ProfileDataContainer {
  const _$ProfileDataContainerImpl({required this.profile});

  factory _$ProfileDataContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataContainerImplFromJson(json);

  @override
  final CreateProfileDataModel profile;

  @override
  String toString() {
    return 'ProfileDataContainer(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataContainerImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of ProfileDataContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataContainerImplCopyWith<_$ProfileDataContainerImpl>
      get copyWith =>
          __$$ProfileDataContainerImplCopyWithImpl<_$ProfileDataContainerImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDataContainerImplToJson(
      this,
    );
  }
}

abstract class _ProfileDataContainer implements ProfileDataContainer {
  const factory _ProfileDataContainer(
          {required final CreateProfileDataModel profile}) =
      _$ProfileDataContainerImpl;

  factory _ProfileDataContainer.fromJson(Map<String, dynamic> json) =
      _$ProfileDataContainerImpl.fromJson;

  @override
  CreateProfileDataModel get profile;

  /// Create a copy of ProfileDataContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataContainerImplCopyWith<_$ProfileDataContainerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
