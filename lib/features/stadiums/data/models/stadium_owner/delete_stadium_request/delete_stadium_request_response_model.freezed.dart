// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_stadium_request_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteStadiumRequestResponseModel _$DeleteStadiumRequestResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteStadiumRequestResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteStadiumRequestResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this DeleteStadiumRequestResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteStadiumRequestResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteStadiumRequestResponseModelCopyWith<DeleteStadiumRequestResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteStadiumRequestResponseModelCopyWith<$Res> {
  factory $DeleteStadiumRequestResponseModelCopyWith(
          DeleteStadiumRequestResponseModel value,
          $Res Function(DeleteStadiumRequestResponseModel) then) =
      _$DeleteStadiumRequestResponseModelCopyWithImpl<$Res,
          DeleteStadiumRequestResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message});
}

/// @nodoc
class _$DeleteStadiumRequestResponseModelCopyWithImpl<$Res,
        $Val extends DeleteStadiumRequestResponseModel>
    implements $DeleteStadiumRequestResponseModelCopyWith<$Res> {
  _$DeleteStadiumRequestResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteStadiumRequestResponseModel
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
abstract class _$$DeleteStadiumRequestResponseModelImplCopyWith<$Res>
    implements $DeleteStadiumRequestResponseModelCopyWith<$Res> {
  factory _$$DeleteStadiumRequestResponseModelImplCopyWith(
          _$DeleteStadiumRequestResponseModelImpl value,
          $Res Function(_$DeleteStadiumRequestResponseModelImpl) then) =
      __$$DeleteStadiumRequestResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message});
}

/// @nodoc
class __$$DeleteStadiumRequestResponseModelImplCopyWithImpl<$Res>
    extends _$DeleteStadiumRequestResponseModelCopyWithImpl<$Res,
        _$DeleteStadiumRequestResponseModelImpl>
    implements _$$DeleteStadiumRequestResponseModelImplCopyWith<$Res> {
  __$$DeleteStadiumRequestResponseModelImplCopyWithImpl(
      _$DeleteStadiumRequestResponseModelImpl _value,
      $Res Function(_$DeleteStadiumRequestResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteStadiumRequestResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
  }) {
    return _then(_$DeleteStadiumRequestResponseModelImpl(
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
class _$DeleteStadiumRequestResponseModelImpl
    with DiagnosticableTreeMixin
    implements _DeleteStadiumRequestResponseModel {
  const _$DeleteStadiumRequestResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message});

  factory _$DeleteStadiumRequestResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteStadiumRequestResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteStadiumRequestResponseModel(status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteStadiumRequestResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStadiumRequestResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, statusCode, message);

  /// Create a copy of DeleteStadiumRequestResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteStadiumRequestResponseModelImplCopyWith<
          _$DeleteStadiumRequestResponseModelImpl>
      get copyWith => __$$DeleteStadiumRequestResponseModelImplCopyWithImpl<
          _$DeleteStadiumRequestResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteStadiumRequestResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteStadiumRequestResponseModel
    implements DeleteStadiumRequestResponseModel {
  const factory _DeleteStadiumRequestResponseModel(
      {required final bool status,
      @JsonKey(name: 'status_code') required final int statusCode,
      final String? message}) = _$DeleteStadiumRequestResponseModelImpl;

  factory _DeleteStadiumRequestResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$DeleteStadiumRequestResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;

  /// Create a copy of DeleteStadiumRequestResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteStadiumRequestResponseModelImplCopyWith<
          _$DeleteStadiumRequestResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
