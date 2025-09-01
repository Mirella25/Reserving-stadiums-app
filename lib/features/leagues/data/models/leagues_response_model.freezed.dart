// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leagues_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaguesResponseModel _$LeaguesResponseModelFromJson(Map<String, dynamic> json) {
  return _LeaguesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LeaguesResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<LeagueModel> get data => throw _privateConstructorUsedError;

  /// Serializes this LeaguesResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaguesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaguesResponseModelCopyWith<LeaguesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaguesResponseModelCopyWith<$Res> {
  factory $LeaguesResponseModelCopyWith(LeaguesResponseModel value,
          $Res Function(LeaguesResponseModel) then) =
      _$LeaguesResponseModelCopyWithImpl<$Res, LeaguesResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String message,
      List<LeagueModel> data});
}

/// @nodoc
class _$LeaguesResponseModelCopyWithImpl<$Res,
        $Val extends LeaguesResponseModel>
    implements $LeaguesResponseModelCopyWith<$Res> {
  _$LeaguesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaguesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = null,
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaguesResponseModelImplCopyWith<$Res>
    implements $LeaguesResponseModelCopyWith<$Res> {
  factory _$$LeaguesResponseModelImplCopyWith(_$LeaguesResponseModelImpl value,
          $Res Function(_$LeaguesResponseModelImpl) then) =
      __$$LeaguesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String message,
      List<LeagueModel> data});
}

/// @nodoc
class __$$LeaguesResponseModelImplCopyWithImpl<$Res>
    extends _$LeaguesResponseModelCopyWithImpl<$Res, _$LeaguesResponseModelImpl>
    implements _$$LeaguesResponseModelImplCopyWith<$Res> {
  __$$LeaguesResponseModelImplCopyWithImpl(_$LeaguesResponseModelImpl _value,
      $Res Function(_$LeaguesResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaguesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$LeaguesResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaguesResponseModelImpl implements _LeaguesResponseModel {
  const _$LeaguesResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      required this.message,
      required final List<LeagueModel> data})
      : _data = data;

  factory _$LeaguesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaguesResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String message;
  final List<LeagueModel> _data;
  @override
  List<LeagueModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'LeaguesResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaguesResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, statusCode, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of LeaguesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaguesResponseModelImplCopyWith<_$LeaguesResponseModelImpl>
      get copyWith =>
          __$$LeaguesResponseModelImplCopyWithImpl<_$LeaguesResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaguesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LeaguesResponseModel implements LeaguesResponseModel {
  const factory _LeaguesResponseModel(
      {required final bool status,
      @JsonKey(name: 'status_code') required final int statusCode,
      required final String message,
      required final List<LeagueModel> data}) = _$LeaguesResponseModelImpl;

  factory _LeaguesResponseModel.fromJson(Map<String, dynamic> json) =
      _$LeaguesResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String get message;
  @override
  List<LeagueModel> get data;

  /// Create a copy of LeaguesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaguesResponseModelImplCopyWith<_$LeaguesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
