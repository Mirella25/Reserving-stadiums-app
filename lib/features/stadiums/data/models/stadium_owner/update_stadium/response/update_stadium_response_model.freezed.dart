// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_stadium_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateStadiumResponseModel _$UpdateStadiumResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateStadiumResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateStadiumResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UpdateStadiumDataWrapper get data => throw _privateConstructorUsedError;

  /// Serializes this UpdateStadiumResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStadiumResponseModelCopyWith<UpdateStadiumResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStadiumResponseModelCopyWith<$Res> {
  factory $UpdateStadiumResponseModelCopyWith(UpdateStadiumResponseModel value,
          $Res Function(UpdateStadiumResponseModel) then) =
      _$UpdateStadiumResponseModelCopyWithImpl<$Res,
          UpdateStadiumResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      UpdateStadiumDataWrapper data});

  $UpdateStadiumDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class _$UpdateStadiumResponseModelCopyWithImpl<$Res,
        $Val extends UpdateStadiumResponseModel>
    implements $UpdateStadiumResponseModelCopyWith<$Res> {
  _$UpdateStadiumResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateStadiumResponseModel
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
              as UpdateStadiumDataWrapper,
    ) as $Val);
  }

  /// Create a copy of UpdateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateStadiumDataWrapperCopyWith<$Res> get data {
    return $UpdateStadiumDataWrapperCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateStadiumResponseModelImplCopyWith<$Res>
    implements $UpdateStadiumResponseModelCopyWith<$Res> {
  factory _$$UpdateStadiumResponseModelImplCopyWith(
          _$UpdateStadiumResponseModelImpl value,
          $Res Function(_$UpdateStadiumResponseModelImpl) then) =
      __$$UpdateStadiumResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      UpdateStadiumDataWrapper data});

  @override
  $UpdateStadiumDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdateStadiumResponseModelImplCopyWithImpl<$Res>
    extends _$UpdateStadiumResponseModelCopyWithImpl<$Res,
        _$UpdateStadiumResponseModelImpl>
    implements _$$UpdateStadiumResponseModelImplCopyWith<$Res> {
  __$$UpdateStadiumResponseModelImplCopyWithImpl(
      _$UpdateStadiumResponseModelImpl _value,
      $Res Function(_$UpdateStadiumResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$UpdateStadiumResponseModelImpl(
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
              as UpdateStadiumDataWrapper,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateStadiumResponseModelImpl
    with DiagnosticableTreeMixin
    implements _UpdateStadiumResponseModel {
  const _$UpdateStadiumResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$UpdateStadiumResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateStadiumResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final UpdateStadiumDataWrapper data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateStadiumResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateStadiumResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStadiumResponseModelImpl &&
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

  /// Create a copy of UpdateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStadiumResponseModelImplCopyWith<_$UpdateStadiumResponseModelImpl>
      get copyWith => __$$UpdateStadiumResponseModelImplCopyWithImpl<
          _$UpdateStadiumResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStadiumResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateStadiumResponseModel
    implements UpdateStadiumResponseModel {
  const factory _UpdateStadiumResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final UpdateStadiumDataWrapper data}) =
      _$UpdateStadiumResponseModelImpl;

  factory _UpdateStadiumResponseModel.fromJson(Map<String, dynamic> json) =
      _$UpdateStadiumResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  UpdateStadiumDataWrapper get data;

  /// Create a copy of UpdateStadiumResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStadiumResponseModelImplCopyWith<_$UpdateStadiumResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateStadiumDataWrapper _$UpdateStadiumDataWrapperFromJson(
    Map<String, dynamic> json) {
  return _UpdateStadiumDataWrapper.fromJson(json);
}

/// @nodoc
mixin _$UpdateStadiumDataWrapper {
  @JsonKey(name: 'Stadium')
  UpdateStadiumDataResponseModel get stadium =>
      throw _privateConstructorUsedError;

  /// Serializes this UpdateStadiumDataWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateStadiumDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStadiumDataWrapperCopyWith<UpdateStadiumDataWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStadiumDataWrapperCopyWith<$Res> {
  factory $UpdateStadiumDataWrapperCopyWith(UpdateStadiumDataWrapper value,
          $Res Function(UpdateStadiumDataWrapper) then) =
      _$UpdateStadiumDataWrapperCopyWithImpl<$Res, UpdateStadiumDataWrapper>;
  @useResult
  $Res call({@JsonKey(name: 'Stadium') UpdateStadiumDataResponseModel stadium});

  $UpdateStadiumDataResponseModelCopyWith<$Res> get stadium;
}

/// @nodoc
class _$UpdateStadiumDataWrapperCopyWithImpl<$Res,
        $Val extends UpdateStadiumDataWrapper>
    implements $UpdateStadiumDataWrapperCopyWith<$Res> {
  _$UpdateStadiumDataWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateStadiumDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadium = null,
  }) {
    return _then(_value.copyWith(
      stadium: null == stadium
          ? _value.stadium
          : stadium // ignore: cast_nullable_to_non_nullable
              as UpdateStadiumDataResponseModel,
    ) as $Val);
  }

  /// Create a copy of UpdateStadiumDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateStadiumDataResponseModelCopyWith<$Res> get stadium {
    return $UpdateStadiumDataResponseModelCopyWith<$Res>(_value.stadium,
        (value) {
      return _then(_value.copyWith(stadium: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateStadiumDataWrapperImplCopyWith<$Res>
    implements $UpdateStadiumDataWrapperCopyWith<$Res> {
  factory _$$UpdateStadiumDataWrapperImplCopyWith(
          _$UpdateStadiumDataWrapperImpl value,
          $Res Function(_$UpdateStadiumDataWrapperImpl) then) =
      __$$UpdateStadiumDataWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Stadium') UpdateStadiumDataResponseModel stadium});

  @override
  $UpdateStadiumDataResponseModelCopyWith<$Res> get stadium;
}

/// @nodoc
class __$$UpdateStadiumDataWrapperImplCopyWithImpl<$Res>
    extends _$UpdateStadiumDataWrapperCopyWithImpl<$Res,
        _$UpdateStadiumDataWrapperImpl>
    implements _$$UpdateStadiumDataWrapperImplCopyWith<$Res> {
  __$$UpdateStadiumDataWrapperImplCopyWithImpl(
      _$UpdateStadiumDataWrapperImpl _value,
      $Res Function(_$UpdateStadiumDataWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateStadiumDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadium = null,
  }) {
    return _then(_$UpdateStadiumDataWrapperImpl(
      stadium: null == stadium
          ? _value.stadium
          : stadium // ignore: cast_nullable_to_non_nullable
              as UpdateStadiumDataResponseModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateStadiumDataWrapperImpl
    with DiagnosticableTreeMixin
    implements _UpdateStadiumDataWrapper {
  const _$UpdateStadiumDataWrapperImpl(
      {@JsonKey(name: 'Stadium') required this.stadium});

  factory _$UpdateStadiumDataWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateStadiumDataWrapperImplFromJson(json);

  @override
  @JsonKey(name: 'Stadium')
  final UpdateStadiumDataResponseModel stadium;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateStadiumDataWrapper(stadium: $stadium)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateStadiumDataWrapper'))
      ..add(DiagnosticsProperty('stadium', stadium));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStadiumDataWrapperImpl &&
            (identical(other.stadium, stadium) || other.stadium == stadium));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stadium);

  /// Create a copy of UpdateStadiumDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStadiumDataWrapperImplCopyWith<_$UpdateStadiumDataWrapperImpl>
      get copyWith => __$$UpdateStadiumDataWrapperImplCopyWithImpl<
          _$UpdateStadiumDataWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStadiumDataWrapperImplToJson(
      this,
    );
  }
}

abstract class _UpdateStadiumDataWrapper implements UpdateStadiumDataWrapper {
  const factory _UpdateStadiumDataWrapper(
          {@JsonKey(name: 'Stadium')
          required final UpdateStadiumDataResponseModel stadium}) =
      _$UpdateStadiumDataWrapperImpl;

  factory _UpdateStadiumDataWrapper.fromJson(Map<String, dynamic> json) =
      _$UpdateStadiumDataWrapperImpl.fromJson;

  @override
  @JsonKey(name: 'Stadium')
  UpdateStadiumDataResponseModel get stadium;

  /// Create a copy of UpdateStadiumDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStadiumDataWrapperImplCopyWith<_$UpdateStadiumDataWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}
