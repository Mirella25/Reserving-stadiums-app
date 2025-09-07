// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_league_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateLeagueResponse _$UpdateLeagueResponseFromJson(Map<String, dynamic> json) {
  return _UpdateLeagueResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateLeagueResponse {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UpdateLeagueDataResponseModel get data => throw _privateConstructorUsedError;

  /// Serializes this UpdateLeagueResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateLeagueResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateLeagueResponseCopyWith<UpdateLeagueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateLeagueResponseCopyWith<$Res> {
  factory $UpdateLeagueResponseCopyWith(UpdateLeagueResponse value,
          $Res Function(UpdateLeagueResponse) then) =
      _$UpdateLeagueResponseCopyWithImpl<$Res, UpdateLeagueResponse>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      UpdateLeagueDataResponseModel data});

  $UpdateLeagueDataResponseModelCopyWith<$Res> get data;
}

/// @nodoc
class _$UpdateLeagueResponseCopyWithImpl<$Res,
        $Val extends UpdateLeagueResponse>
    implements $UpdateLeagueResponseCopyWith<$Res> {
  _$UpdateLeagueResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateLeagueResponse
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
              as UpdateLeagueDataResponseModel,
    ) as $Val);
  }

  /// Create a copy of UpdateLeagueResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateLeagueDataResponseModelCopyWith<$Res> get data {
    return $UpdateLeagueDataResponseModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateLeagueResponseImplCopyWith<$Res>
    implements $UpdateLeagueResponseCopyWith<$Res> {
  factory _$$UpdateLeagueResponseImplCopyWith(_$UpdateLeagueResponseImpl value,
          $Res Function(_$UpdateLeagueResponseImpl) then) =
      __$$UpdateLeagueResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      UpdateLeagueDataResponseModel data});

  @override
  $UpdateLeagueDataResponseModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdateLeagueResponseImplCopyWithImpl<$Res>
    extends _$UpdateLeagueResponseCopyWithImpl<$Res, _$UpdateLeagueResponseImpl>
    implements _$$UpdateLeagueResponseImplCopyWith<$Res> {
  __$$UpdateLeagueResponseImplCopyWithImpl(_$UpdateLeagueResponseImpl _value,
      $Res Function(_$UpdateLeagueResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateLeagueResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$UpdateLeagueResponseImpl(
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
              as UpdateLeagueDataResponseModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateLeagueResponseImpl
    with DiagnosticableTreeMixin
    implements _UpdateLeagueResponse {
  const _$UpdateLeagueResponseImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$UpdateLeagueResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateLeagueResponseImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final UpdateLeagueDataResponseModel data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateLeagueResponse(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateLeagueResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLeagueResponseImpl &&
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

  /// Create a copy of UpdateLeagueResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLeagueResponseImplCopyWith<_$UpdateLeagueResponseImpl>
      get copyWith =>
          __$$UpdateLeagueResponseImplCopyWithImpl<_$UpdateLeagueResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateLeagueResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateLeagueResponse implements UpdateLeagueResponse {
  const factory _UpdateLeagueResponse(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final UpdateLeagueDataResponseModel data}) =
      _$UpdateLeagueResponseImpl;

  factory _UpdateLeagueResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateLeagueResponseImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  UpdateLeagueDataResponseModel get data;

  /// Create a copy of UpdateLeagueResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateLeagueResponseImplCopyWith<_$UpdateLeagueResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
