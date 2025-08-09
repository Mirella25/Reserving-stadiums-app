// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_create_stadium_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OwnerCreateStadiumResponseModel _$OwnerCreateStadiumResponseModelFromJson(
    Map<String, dynamic> json) {
  return _OwnerCreateStadiumResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OwnerCreateStadiumResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  OwnerCreateStadiumDataModel get data => throw _privateConstructorUsedError;

  /// Serializes this OwnerCreateStadiumResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OwnerCreateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerCreateStadiumResponseModelCopyWith<OwnerCreateStadiumResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCreateStadiumResponseModelCopyWith<$Res> {
  factory $OwnerCreateStadiumResponseModelCopyWith(
          OwnerCreateStadiumResponseModel value,
          $Res Function(OwnerCreateStadiumResponseModel) then) =
      _$OwnerCreateStadiumResponseModelCopyWithImpl<$Res,
          OwnerCreateStadiumResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      OwnerCreateStadiumDataModel data});

  $OwnerCreateStadiumDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$OwnerCreateStadiumResponseModelCopyWithImpl<$Res,
        $Val extends OwnerCreateStadiumResponseModel>
    implements $OwnerCreateStadiumResponseModelCopyWith<$Res> {
  _$OwnerCreateStadiumResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerCreateStadiumResponseModel
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
              as OwnerCreateStadiumDataModel,
    ) as $Val);
  }

  /// Create a copy of OwnerCreateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCreateStadiumDataModelCopyWith<$Res> get data {
    return $OwnerCreateStadiumDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OwnerCreateStadiumResponseModelImplCopyWith<$Res>
    implements $OwnerCreateStadiumResponseModelCopyWith<$Res> {
  factory _$$OwnerCreateStadiumResponseModelImplCopyWith(
          _$OwnerCreateStadiumResponseModelImpl value,
          $Res Function(_$OwnerCreateStadiumResponseModelImpl) then) =
      __$$OwnerCreateStadiumResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      OwnerCreateStadiumDataModel data});

  @override
  $OwnerCreateStadiumDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$OwnerCreateStadiumResponseModelImplCopyWithImpl<$Res>
    extends _$OwnerCreateStadiumResponseModelCopyWithImpl<$Res,
        _$OwnerCreateStadiumResponseModelImpl>
    implements _$$OwnerCreateStadiumResponseModelImplCopyWith<$Res> {
  __$$OwnerCreateStadiumResponseModelImplCopyWithImpl(
      _$OwnerCreateStadiumResponseModelImpl _value,
      $Res Function(_$OwnerCreateStadiumResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerCreateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$OwnerCreateStadiumResponseModelImpl(
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
              as OwnerCreateStadiumDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerCreateStadiumResponseModelImpl
    with DiagnosticableTreeMixin
    implements _OwnerCreateStadiumResponseModel {
  const _$OwnerCreateStadiumResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$OwnerCreateStadiumResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OwnerCreateStadiumResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final OwnerCreateStadiumDataModel data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OwnerCreateStadiumResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OwnerCreateStadiumResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerCreateStadiumResponseModelImpl &&
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

  /// Create a copy of OwnerCreateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerCreateStadiumResponseModelImplCopyWith<
          _$OwnerCreateStadiumResponseModelImpl>
      get copyWith => __$$OwnerCreateStadiumResponseModelImplCopyWithImpl<
          _$OwnerCreateStadiumResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerCreateStadiumResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OwnerCreateStadiumResponseModel
    implements OwnerCreateStadiumResponseModel {
  const factory _OwnerCreateStadiumResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final OwnerCreateStadiumDataModel data}) =
      _$OwnerCreateStadiumResponseModelImpl;

  factory _OwnerCreateStadiumResponseModel.fromJson(Map<String, dynamic> json) =
      _$OwnerCreateStadiumResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  OwnerCreateStadiumDataModel get data;

  /// Create a copy of OwnerCreateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerCreateStadiumResponseModelImplCopyWith<
          _$OwnerCreateStadiumResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
