// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sports_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SportsResponseModel _$SportsResponseModelFromJson(Map<String, dynamic> json) {
  return _SportsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SportsResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  SportsContainer get data => throw _privateConstructorUsedError;

  /// Serializes this SportsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SportsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SportsResponseModelCopyWith<SportsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportsResponseModelCopyWith<$Res> {
  factory $SportsResponseModelCopyWith(
          SportsResponseModel value, $Res Function(SportsResponseModel) then) =
      _$SportsResponseModelCopyWithImpl<$Res, SportsResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      @JsonKey(name: 'data') SportsContainer data});

  $SportsContainerCopyWith<$Res> get data;
}

/// @nodoc
class _$SportsResponseModelCopyWithImpl<$Res, $Val extends SportsResponseModel>
    implements $SportsResponseModelCopyWith<$Res> {
  _$SportsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SportsResponseModel
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
              as SportsContainer,
    ) as $Val);
  }

  /// Create a copy of SportsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SportsContainerCopyWith<$Res> get data {
    return $SportsContainerCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SportsResponseModelImplCopyWith<$Res>
    implements $SportsResponseModelCopyWith<$Res> {
  factory _$$SportsResponseModelImplCopyWith(_$SportsResponseModelImpl value,
          $Res Function(_$SportsResponseModelImpl) then) =
      __$$SportsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      @JsonKey(name: 'data') SportsContainer data});

  @override
  $SportsContainerCopyWith<$Res> get data;
}

/// @nodoc
class __$$SportsResponseModelImplCopyWithImpl<$Res>
    extends _$SportsResponseModelCopyWithImpl<$Res, _$SportsResponseModelImpl>
    implements _$$SportsResponseModelImplCopyWith<$Res> {
  __$$SportsResponseModelImplCopyWithImpl(_$SportsResponseModelImpl _value,
      $Res Function(_$SportsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SportsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$SportsResponseModelImpl(
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
              as SportsContainer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SportsResponseModelImpl implements _SportsResponseModel {
  const _$SportsResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      @JsonKey(name: 'data') required this.data});

  factory _$SportsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SportsResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  @JsonKey(name: 'data')
  final SportsContainer data;

  @override
  String toString() {
    return 'SportsResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportsResponseModelImpl &&
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

  /// Create a copy of SportsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SportsResponseModelImplCopyWith<_$SportsResponseModelImpl> get copyWith =>
      __$$SportsResponseModelImplCopyWithImpl<_$SportsResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SportsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SportsResponseModel implements SportsResponseModel {
  const factory _SportsResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          @JsonKey(name: 'data') required final SportsContainer data}) =
      _$SportsResponseModelImpl;

  factory _SportsResponseModel.fromJson(Map<String, dynamic> json) =
      _$SportsResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(name: 'data')
  SportsContainer get data;

  /// Create a copy of SportsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SportsResponseModelImplCopyWith<_$SportsResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SportsContainer _$SportsContainerFromJson(Map<String, dynamic> json) {
  return _SportsContainer.fromJson(json);
}

/// @nodoc
mixin _$SportsContainer {
  @JsonKey(name: 'Sports:')
  List<SportModel> get sports => throw _privateConstructorUsedError;

  /// Serializes this SportsContainer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SportsContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SportsContainerCopyWith<SportsContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportsContainerCopyWith<$Res> {
  factory $SportsContainerCopyWith(
          SportsContainer value, $Res Function(SportsContainer) then) =
      _$SportsContainerCopyWithImpl<$Res, SportsContainer>;
  @useResult
  $Res call({@JsonKey(name: 'Sports:') List<SportModel> sports});
}

/// @nodoc
class _$SportsContainerCopyWithImpl<$Res, $Val extends SportsContainer>
    implements $SportsContainerCopyWith<$Res> {
  _$SportsContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SportsContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sports = null,
  }) {
    return _then(_value.copyWith(
      sports: null == sports
          ? _value.sports
          : sports // ignore: cast_nullable_to_non_nullable
              as List<SportModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SportsContainerImplCopyWith<$Res>
    implements $SportsContainerCopyWith<$Res> {
  factory _$$SportsContainerImplCopyWith(_$SportsContainerImpl value,
          $Res Function(_$SportsContainerImpl) then) =
      __$$SportsContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Sports:') List<SportModel> sports});
}

/// @nodoc
class __$$SportsContainerImplCopyWithImpl<$Res>
    extends _$SportsContainerCopyWithImpl<$Res, _$SportsContainerImpl>
    implements _$$SportsContainerImplCopyWith<$Res> {
  __$$SportsContainerImplCopyWithImpl(
      _$SportsContainerImpl _value, $Res Function(_$SportsContainerImpl) _then)
      : super(_value, _then);

  /// Create a copy of SportsContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sports = null,
  }) {
    return _then(_$SportsContainerImpl(
      sports: null == sports
          ? _value._sports
          : sports // ignore: cast_nullable_to_non_nullable
              as List<SportModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SportsContainerImpl implements _SportsContainer {
  const _$SportsContainerImpl(
      {@JsonKey(name: 'Sports:') required final List<SportModel> sports})
      : _sports = sports;

  factory _$SportsContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SportsContainerImplFromJson(json);

  final List<SportModel> _sports;
  @override
  @JsonKey(name: 'Sports:')
  List<SportModel> get sports {
    if (_sports is EqualUnmodifiableListView) return _sports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sports);
  }

  @override
  String toString() {
    return 'SportsContainer(sports: $sports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportsContainerImpl &&
            const DeepCollectionEquality().equals(other._sports, _sports));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sports));

  /// Create a copy of SportsContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SportsContainerImplCopyWith<_$SportsContainerImpl> get copyWith =>
      __$$SportsContainerImplCopyWithImpl<_$SportsContainerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SportsContainerImplToJson(
      this,
    );
  }
}

abstract class _SportsContainer implements SportsContainer {
  const factory _SportsContainer(
          {@JsonKey(name: 'Sports:') required final List<SportModel> sports}) =
      _$SportsContainerImpl;

  factory _SportsContainer.fromJson(Map<String, dynamic> json) =
      _$SportsContainerImpl.fromJson;

  @override
  @JsonKey(name: 'Sports:')
  List<SportModel> get sports;

  /// Create a copy of SportsContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SportsContainerImplCopyWith<_$SportsContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
