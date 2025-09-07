// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_league_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteLeagueResponseModel _$DeleteLeagueResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteLeagueResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteLeagueResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this DeleteLeagueResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteLeagueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteLeagueResponseModelCopyWith<DeleteLeagueResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteLeagueResponseModelCopyWith<$Res> {
  factory $DeleteLeagueResponseModelCopyWith(DeleteLeagueResponseModel value,
          $Res Function(DeleteLeagueResponseModel) then) =
      _$DeleteLeagueResponseModelCopyWithImpl<$Res, DeleteLeagueResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message});
}

/// @nodoc
class _$DeleteLeagueResponseModelCopyWithImpl<$Res,
        $Val extends DeleteLeagueResponseModel>
    implements $DeleteLeagueResponseModelCopyWith<$Res> {
  _$DeleteLeagueResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteLeagueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteLeagueResponseModelImplCopyWith<$Res>
    implements $DeleteLeagueResponseModelCopyWith<$Res> {
  factory _$$DeleteLeagueResponseModelImplCopyWith(
          _$DeleteLeagueResponseModelImpl value,
          $Res Function(_$DeleteLeagueResponseModelImpl) then) =
      __$$DeleteLeagueResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message});
}

/// @nodoc
class __$$DeleteLeagueResponseModelImplCopyWithImpl<$Res>
    extends _$DeleteLeagueResponseModelCopyWithImpl<$Res,
        _$DeleteLeagueResponseModelImpl>
    implements _$$DeleteLeagueResponseModelImplCopyWith<$Res> {
  __$$DeleteLeagueResponseModelImplCopyWithImpl(
      _$DeleteLeagueResponseModelImpl _value,
      $Res Function(_$DeleteLeagueResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteLeagueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
  }) {
    return _then(_$DeleteLeagueResponseModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteLeagueResponseModelImpl
    with DiagnosticableTreeMixin
    implements _DeleteLeagueResponseModel {
  const _$DeleteLeagueResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message});

  factory _$DeleteLeagueResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteLeagueResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteLeagueResponseModel(status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteLeagueResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLeagueResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, statusCode, message);

  /// Create a copy of DeleteLeagueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLeagueResponseModelImplCopyWith<_$DeleteLeagueResponseModelImpl>
      get copyWith => __$$DeleteLeagueResponseModelImplCopyWithImpl<
          _$DeleteLeagueResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteLeagueResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteLeagueResponseModel implements DeleteLeagueResponseModel {
  const factory _DeleteLeagueResponseModel(
      {required final bool status,
      @JsonKey(name: 'status_code') required final int statusCode,
      final String? message}) = _$DeleteLeagueResponseModelImpl;

  factory _DeleteLeagueResponseModel.fromJson(Map<String, dynamic> json) =
      _$DeleteLeagueResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;

  /// Create a copy of DeleteLeagueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteLeagueResponseModelImplCopyWith<_$DeleteLeagueResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
