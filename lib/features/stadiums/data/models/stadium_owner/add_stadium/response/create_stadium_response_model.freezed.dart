// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_stadium_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateStadiumResponseModel _$CreateStadiumResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateStadiumResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateStadiumResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CreateStadiumDataResponeModel get data => throw _privateConstructorUsedError;

  /// Serializes this CreateStadiumResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateStadiumResponseModelCopyWith<CreateStadiumResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStadiumResponseModelCopyWith<$Res> {
  factory $CreateStadiumResponseModelCopyWith(CreateStadiumResponseModel value,
          $Res Function(CreateStadiumResponseModel) then) =
      _$CreateStadiumResponseModelCopyWithImpl<$Res,
          CreateStadiumResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      CreateStadiumDataResponeModel data});

  $CreateStadiumDataResponeModelCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateStadiumResponseModelCopyWithImpl<$Res,
        $Val extends CreateStadiumResponseModel>
    implements $CreateStadiumResponseModelCopyWith<$Res> {
  _$CreateStadiumResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateStadiumResponseModel
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
              as CreateStadiumDataResponeModel,
    ) as $Val);
  }

  /// Create a copy of CreateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateStadiumDataResponeModelCopyWith<$Res> get data {
    return $CreateStadiumDataResponeModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateStadiumResponseModelImplCopyWith<$Res>
    implements $CreateStadiumResponseModelCopyWith<$Res> {
  factory _$$CreateStadiumResponseModelImplCopyWith(
          _$CreateStadiumResponseModelImpl value,
          $Res Function(_$CreateStadiumResponseModelImpl) then) =
      __$$CreateStadiumResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      CreateStadiumDataResponeModel data});

  @override
  $CreateStadiumDataResponeModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateStadiumResponseModelImplCopyWithImpl<$Res>
    extends _$CreateStadiumResponseModelCopyWithImpl<$Res,
        _$CreateStadiumResponseModelImpl>
    implements _$$CreateStadiumResponseModelImplCopyWith<$Res> {
  __$$CreateStadiumResponseModelImplCopyWithImpl(
      _$CreateStadiumResponseModelImpl _value,
      $Res Function(_$CreateStadiumResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$CreateStadiumResponseModelImpl(
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
              as CreateStadiumDataResponeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStadiumResponseModelImpl implements _CreateStadiumResponseModel {
  const _$CreateStadiumResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$CreateStadiumResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateStadiumResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final CreateStadiumDataResponeModel data;

  @override
  String toString() {
    return 'CreateStadiumResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStadiumResponseModelImpl &&
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

  /// Create a copy of CreateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStadiumResponseModelImplCopyWith<_$CreateStadiumResponseModelImpl>
      get copyWith => __$$CreateStadiumResponseModelImplCopyWithImpl<
          _$CreateStadiumResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStadiumResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CreateStadiumResponseModel
    implements CreateStadiumResponseModel {
  const factory _CreateStadiumResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final CreateStadiumDataResponeModel data}) =
      _$CreateStadiumResponseModelImpl;

  factory _CreateStadiumResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreateStadiumResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  CreateStadiumDataResponeModel get data;

  /// Create a copy of CreateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateStadiumResponseModelImplCopyWith<_$CreateStadiumResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
