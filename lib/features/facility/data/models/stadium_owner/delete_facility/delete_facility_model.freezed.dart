// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_facility_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteFacilityModel _$DeleteFacilityModelFromJson(Map<String, dynamic> json) {
  return _DeleteFacilityModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteFacilityModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this DeleteFacilityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteFacilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteFacilityModelCopyWith<DeleteFacilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFacilityModelCopyWith<$Res> {
  factory $DeleteFacilityModelCopyWith(
          DeleteFacilityModel value, $Res Function(DeleteFacilityModel) then) =
      _$DeleteFacilityModelCopyWithImpl<$Res, DeleteFacilityModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message});
}

/// @nodoc
class _$DeleteFacilityModelCopyWithImpl<$Res, $Val extends DeleteFacilityModel>
    implements $DeleteFacilityModelCopyWith<$Res> {
  _$DeleteFacilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteFacilityModel
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
abstract class _$$DeleteFacilityModelImplCopyWith<$Res>
    implements $DeleteFacilityModelCopyWith<$Res> {
  factory _$$DeleteFacilityModelImplCopyWith(_$DeleteFacilityModelImpl value,
          $Res Function(_$DeleteFacilityModelImpl) then) =
      __$$DeleteFacilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message});
}

/// @nodoc
class __$$DeleteFacilityModelImplCopyWithImpl<$Res>
    extends _$DeleteFacilityModelCopyWithImpl<$Res, _$DeleteFacilityModelImpl>
    implements _$$DeleteFacilityModelImplCopyWith<$Res> {
  __$$DeleteFacilityModelImplCopyWithImpl(_$DeleteFacilityModelImpl _value,
      $Res Function(_$DeleteFacilityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteFacilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
  }) {
    return _then(_$DeleteFacilityModelImpl(
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
class _$DeleteFacilityModelImpl
    with DiagnosticableTreeMixin
    implements _DeleteFacilityModel {
  const _$DeleteFacilityModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message});

  factory _$DeleteFacilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteFacilityModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFacilityModel(status: $status, statusCode: $statusCode, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFacilityModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFacilityModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, statusCode, message);

  /// Create a copy of DeleteFacilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFacilityModelImplCopyWith<_$DeleteFacilityModelImpl> get copyWith =>
      __$$DeleteFacilityModelImplCopyWithImpl<_$DeleteFacilityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteFacilityModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteFacilityModel implements DeleteFacilityModel {
  const factory _DeleteFacilityModel(
      {required final bool status,
      @JsonKey(name: 'status_code') required final int statusCode,
      final String? message}) = _$DeleteFacilityModelImpl;

  factory _DeleteFacilityModel.fromJson(Map<String, dynamic> json) =
      _$DeleteFacilityModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;

  /// Create a copy of DeleteFacilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFacilityModelImplCopyWith<_$DeleteFacilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
