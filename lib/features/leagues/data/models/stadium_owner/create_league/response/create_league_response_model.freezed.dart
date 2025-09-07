// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_league_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateLeagueResponseModel _$CreateLeagueResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateLeagueResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateLeagueResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CreateLeagueResponseDataModel get data => throw _privateConstructorUsedError;

  /// Serializes this CreateLeagueResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateLeagueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateLeagueResponseModelCopyWith<CreateLeagueResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLeagueResponseModelCopyWith<$Res> {
  factory $CreateLeagueResponseModelCopyWith(CreateLeagueResponseModel value,
          $Res Function(CreateLeagueResponseModel) then) =
      _$CreateLeagueResponseModelCopyWithImpl<$Res, CreateLeagueResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      CreateLeagueResponseDataModel data});

  $CreateLeagueResponseDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateLeagueResponseModelCopyWithImpl<$Res,
        $Val extends CreateLeagueResponseModel>
    implements $CreateLeagueResponseModelCopyWith<$Res> {
  _$CreateLeagueResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateLeagueResponseModel
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
              as CreateLeagueResponseDataModel,
    ) as $Val);
  }

  /// Create a copy of CreateLeagueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateLeagueResponseDataModelCopyWith<$Res> get data {
    return $CreateLeagueResponseDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateLeagueResponseModelImplCopyWith<$Res>
    implements $CreateLeagueResponseModelCopyWith<$Res> {
  factory _$$CreateLeagueResponseModelImplCopyWith(
          _$CreateLeagueResponseModelImpl value,
          $Res Function(_$CreateLeagueResponseModelImpl) then) =
      __$$CreateLeagueResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      CreateLeagueResponseDataModel data});

  @override
  $CreateLeagueResponseDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateLeagueResponseModelImplCopyWithImpl<$Res>
    extends _$CreateLeagueResponseModelCopyWithImpl<$Res,
        _$CreateLeagueResponseModelImpl>
    implements _$$CreateLeagueResponseModelImplCopyWith<$Res> {
  __$$CreateLeagueResponseModelImplCopyWithImpl(
      _$CreateLeagueResponseModelImpl _value,
      $Res Function(_$CreateLeagueResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateLeagueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$CreateLeagueResponseModelImpl(
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
              as CreateLeagueResponseDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateLeagueResponseModelImpl
    with DiagnosticableTreeMixin
    implements _CreateLeagueResponseModel {
  const _$CreateLeagueResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$CreateLeagueResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateLeagueResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final CreateLeagueResponseDataModel data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateLeagueResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateLeagueResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLeagueResponseModelImpl &&
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

  /// Create a copy of CreateLeagueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateLeagueResponseModelImplCopyWith<_$CreateLeagueResponseModelImpl>
      get copyWith => __$$CreateLeagueResponseModelImplCopyWithImpl<
          _$CreateLeagueResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateLeagueResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CreateLeagueResponseModel implements CreateLeagueResponseModel {
  const factory _CreateLeagueResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final CreateLeagueResponseDataModel data}) =
      _$CreateLeagueResponseModelImpl;

  factory _CreateLeagueResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreateLeagueResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  CreateLeagueResponseDataModel get data;

  /// Create a copy of CreateLeagueResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateLeagueResponseModelImplCopyWith<_$CreateLeagueResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
