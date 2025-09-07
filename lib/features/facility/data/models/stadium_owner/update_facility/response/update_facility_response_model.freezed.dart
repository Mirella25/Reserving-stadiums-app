// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_facility_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateFacilityResponseModel _$UpdateFacilityResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateFacilityResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateFacilityResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UpdateFacilityResponseDataWrapper get data =>
      throw _privateConstructorUsedError;

  /// Serializes this UpdateFacilityResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFacilityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFacilityResponseModelCopyWith<UpdateFacilityResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFacilityResponseModelCopyWith<$Res> {
  factory $UpdateFacilityResponseModelCopyWith(
          UpdateFacilityResponseModel value,
          $Res Function(UpdateFacilityResponseModel) then) =
      _$UpdateFacilityResponseModelCopyWithImpl<$Res,
          UpdateFacilityResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      UpdateFacilityResponseDataWrapper data});

  $UpdateFacilityResponseDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class _$UpdateFacilityResponseModelCopyWithImpl<$Res,
        $Val extends UpdateFacilityResponseModel>
    implements $UpdateFacilityResponseModelCopyWith<$Res> {
  _$UpdateFacilityResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFacilityResponseModel
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
              as UpdateFacilityResponseDataWrapper,
    ) as $Val);
  }

  /// Create a copy of UpdateFacilityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateFacilityResponseDataWrapperCopyWith<$Res> get data {
    return $UpdateFacilityResponseDataWrapperCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateFacilityResponseModelImplCopyWith<$Res>
    implements $UpdateFacilityResponseModelCopyWith<$Res> {
  factory _$$UpdateFacilityResponseModelImplCopyWith(
          _$UpdateFacilityResponseModelImpl value,
          $Res Function(_$UpdateFacilityResponseModelImpl) then) =
      __$$UpdateFacilityResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      UpdateFacilityResponseDataWrapper data});

  @override
  $UpdateFacilityResponseDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdateFacilityResponseModelImplCopyWithImpl<$Res>
    extends _$UpdateFacilityResponseModelCopyWithImpl<$Res,
        _$UpdateFacilityResponseModelImpl>
    implements _$$UpdateFacilityResponseModelImplCopyWith<$Res> {
  __$$UpdateFacilityResponseModelImplCopyWithImpl(
      _$UpdateFacilityResponseModelImpl _value,
      $Res Function(_$UpdateFacilityResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateFacilityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$UpdateFacilityResponseModelImpl(
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
              as UpdateFacilityResponseDataWrapper,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFacilityResponseModelImpl
    with DiagnosticableTreeMixin
    implements _UpdateFacilityResponseModel {
  const _$UpdateFacilityResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$UpdateFacilityResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateFacilityResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final UpdateFacilityResponseDataWrapper data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateFacilityResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateFacilityResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFacilityResponseModelImpl &&
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

  /// Create a copy of UpdateFacilityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFacilityResponseModelImplCopyWith<_$UpdateFacilityResponseModelImpl>
      get copyWith => __$$UpdateFacilityResponseModelImplCopyWithImpl<
          _$UpdateFacilityResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFacilityResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateFacilityResponseModel
    implements UpdateFacilityResponseModel {
  const factory _UpdateFacilityResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final UpdateFacilityResponseDataWrapper data}) =
      _$UpdateFacilityResponseModelImpl;

  factory _UpdateFacilityResponseModel.fromJson(Map<String, dynamic> json) =
      _$UpdateFacilityResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  UpdateFacilityResponseDataWrapper get data;

  /// Create a copy of UpdateFacilityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFacilityResponseModelImplCopyWith<_$UpdateFacilityResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateFacilityResponseDataWrapper _$UpdateFacilityResponseDataWrapperFromJson(
    Map<String, dynamic> json) {
  return _UpdateFacilityResponseDataWrapper.fromJson(json);
}

/// @nodoc
mixin _$UpdateFacilityResponseDataWrapper {
  @JsonKey(name: 'Facility')
  UpdateFacilityResponseDataModel get facility =>
      throw _privateConstructorUsedError;

  /// Serializes this UpdateFacilityResponseDataWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFacilityResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFacilityResponseDataWrapperCopyWith<UpdateFacilityResponseDataWrapper>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFacilityResponseDataWrapperCopyWith<$Res> {
  factory $UpdateFacilityResponseDataWrapperCopyWith(
          UpdateFacilityResponseDataWrapper value,
          $Res Function(UpdateFacilityResponseDataWrapper) then) =
      _$UpdateFacilityResponseDataWrapperCopyWithImpl<$Res,
          UpdateFacilityResponseDataWrapper>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Facility') UpdateFacilityResponseDataModel facility});

  $UpdateFacilityResponseDataModelCopyWith<$Res> get facility;
}

/// @nodoc
class _$UpdateFacilityResponseDataWrapperCopyWithImpl<$Res,
        $Val extends UpdateFacilityResponseDataWrapper>
    implements $UpdateFacilityResponseDataWrapperCopyWith<$Res> {
  _$UpdateFacilityResponseDataWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFacilityResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facility = null,
  }) {
    return _then(_value.copyWith(
      facility: null == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as UpdateFacilityResponseDataModel,
    ) as $Val);
  }

  /// Create a copy of UpdateFacilityResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateFacilityResponseDataModelCopyWith<$Res> get facility {
    return $UpdateFacilityResponseDataModelCopyWith<$Res>(_value.facility,
        (value) {
      return _then(_value.copyWith(facility: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateFacilityResponseDataWrapperImplCopyWith<$Res>
    implements $UpdateFacilityResponseDataWrapperCopyWith<$Res> {
  factory _$$UpdateFacilityResponseDataWrapperImplCopyWith(
          _$UpdateFacilityResponseDataWrapperImpl value,
          $Res Function(_$UpdateFacilityResponseDataWrapperImpl) then) =
      __$$UpdateFacilityResponseDataWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Facility') UpdateFacilityResponseDataModel facility});

  @override
  $UpdateFacilityResponseDataModelCopyWith<$Res> get facility;
}

/// @nodoc
class __$$UpdateFacilityResponseDataWrapperImplCopyWithImpl<$Res>
    extends _$UpdateFacilityResponseDataWrapperCopyWithImpl<$Res,
        _$UpdateFacilityResponseDataWrapperImpl>
    implements _$$UpdateFacilityResponseDataWrapperImplCopyWith<$Res> {
  __$$UpdateFacilityResponseDataWrapperImplCopyWithImpl(
      _$UpdateFacilityResponseDataWrapperImpl _value,
      $Res Function(_$UpdateFacilityResponseDataWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateFacilityResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facility = null,
  }) {
    return _then(_$UpdateFacilityResponseDataWrapperImpl(
      facility: null == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as UpdateFacilityResponseDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFacilityResponseDataWrapperImpl
    with DiagnosticableTreeMixin
    implements _UpdateFacilityResponseDataWrapper {
  const _$UpdateFacilityResponseDataWrapperImpl(
      {@JsonKey(name: 'Facility') required this.facility});

  factory _$UpdateFacilityResponseDataWrapperImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateFacilityResponseDataWrapperImplFromJson(json);

  @override
  @JsonKey(name: 'Facility')
  final UpdateFacilityResponseDataModel facility;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateFacilityResponseDataWrapper(facility: $facility)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateFacilityResponseDataWrapper'))
      ..add(DiagnosticsProperty('facility', facility));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFacilityResponseDataWrapperImpl &&
            (identical(other.facility, facility) ||
                other.facility == facility));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, facility);

  /// Create a copy of UpdateFacilityResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFacilityResponseDataWrapperImplCopyWith<
          _$UpdateFacilityResponseDataWrapperImpl>
      get copyWith => __$$UpdateFacilityResponseDataWrapperImplCopyWithImpl<
          _$UpdateFacilityResponseDataWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFacilityResponseDataWrapperImplToJson(
      this,
    );
  }
}

abstract class _UpdateFacilityResponseDataWrapper
    implements UpdateFacilityResponseDataWrapper {
  const factory _UpdateFacilityResponseDataWrapper(
          {@JsonKey(name: 'Facility')
          required final UpdateFacilityResponseDataModel facility}) =
      _$UpdateFacilityResponseDataWrapperImpl;

  factory _UpdateFacilityResponseDataWrapper.fromJson(
          Map<String, dynamic> json) =
      _$UpdateFacilityResponseDataWrapperImpl.fromJson;

  @override
  @JsonKey(name: 'Facility')
  UpdateFacilityResponseDataModel get facility;

  /// Create a copy of UpdateFacilityResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFacilityResponseDataWrapperImplCopyWith<
          _$UpdateFacilityResponseDataWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}
