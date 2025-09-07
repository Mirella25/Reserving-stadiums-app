// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_facility_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateFacilityResponseModel _$CreateFacilityResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateFacilityResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateFacilityResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CreateFacilityResponseDataWrapper get data =>
      throw _privateConstructorUsedError;

  /// Serializes this CreateFacilityResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateFacilityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFacilityResponseModelCopyWith<CreateFacilityResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFacilityResponseModelCopyWith<$Res> {
  factory $CreateFacilityResponseModelCopyWith(
          CreateFacilityResponseModel value,
          $Res Function(CreateFacilityResponseModel) then) =
      _$CreateFacilityResponseModelCopyWithImpl<$Res,
          CreateFacilityResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      CreateFacilityResponseDataWrapper data});

  $CreateFacilityResponseDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateFacilityResponseModelCopyWithImpl<$Res,
        $Val extends CreateFacilityResponseModel>
    implements $CreateFacilityResponseModelCopyWith<$Res> {
  _$CreateFacilityResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFacilityResponseModel
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
              as CreateFacilityResponseDataWrapper,
    ) as $Val);
  }

  /// Create a copy of CreateFacilityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateFacilityResponseDataWrapperCopyWith<$Res> get data {
    return $CreateFacilityResponseDataWrapperCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateFacilityResponseModelImplCopyWith<$Res>
    implements $CreateFacilityResponseModelCopyWith<$Res> {
  factory _$$CreateFacilityResponseModelImplCopyWith(
          _$CreateFacilityResponseModelImpl value,
          $Res Function(_$CreateFacilityResponseModelImpl) then) =
      __$$CreateFacilityResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      CreateFacilityResponseDataWrapper data});

  @override
  $CreateFacilityResponseDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateFacilityResponseModelImplCopyWithImpl<$Res>
    extends _$CreateFacilityResponseModelCopyWithImpl<$Res,
        _$CreateFacilityResponseModelImpl>
    implements _$$CreateFacilityResponseModelImplCopyWith<$Res> {
  __$$CreateFacilityResponseModelImplCopyWithImpl(
      _$CreateFacilityResponseModelImpl _value,
      $Res Function(_$CreateFacilityResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateFacilityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$CreateFacilityResponseModelImpl(
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
              as CreateFacilityResponseDataWrapper,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateFacilityResponseModelImpl
    with DiagnosticableTreeMixin
    implements _CreateFacilityResponseModel {
  const _$CreateFacilityResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$CreateFacilityResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateFacilityResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final CreateFacilityResponseDataWrapper data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateFacilityResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateFacilityResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFacilityResponseModelImpl &&
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

  /// Create a copy of CreateFacilityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFacilityResponseModelImplCopyWith<_$CreateFacilityResponseModelImpl>
      get copyWith => __$$CreateFacilityResponseModelImplCopyWithImpl<
          _$CreateFacilityResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFacilityResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CreateFacilityResponseModel
    implements CreateFacilityResponseModel {
  const factory _CreateFacilityResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final CreateFacilityResponseDataWrapper data}) =
      _$CreateFacilityResponseModelImpl;

  factory _CreateFacilityResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreateFacilityResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  CreateFacilityResponseDataWrapper get data;

  /// Create a copy of CreateFacilityResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFacilityResponseModelImplCopyWith<_$CreateFacilityResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateFacilityResponseDataWrapper _$CreateFacilityResponseDataWrapperFromJson(
    Map<String, dynamic> json) {
  return _CreateFacilityResponseDataWrapper.fromJson(json);
}

/// @nodoc
mixin _$CreateFacilityResponseDataWrapper {
  @JsonKey(name: 'Facility')
  CreateFacilityResponseDataModel get facility =>
      throw _privateConstructorUsedError;

  /// Serializes this CreateFacilityResponseDataWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateFacilityResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFacilityResponseDataWrapperCopyWith<CreateFacilityResponseDataWrapper>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFacilityResponseDataWrapperCopyWith<$Res> {
  factory $CreateFacilityResponseDataWrapperCopyWith(
          CreateFacilityResponseDataWrapper value,
          $Res Function(CreateFacilityResponseDataWrapper) then) =
      _$CreateFacilityResponseDataWrapperCopyWithImpl<$Res,
          CreateFacilityResponseDataWrapper>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Facility') CreateFacilityResponseDataModel facility});

  $CreateFacilityResponseDataModelCopyWith<$Res> get facility;
}

/// @nodoc
class _$CreateFacilityResponseDataWrapperCopyWithImpl<$Res,
        $Val extends CreateFacilityResponseDataWrapper>
    implements $CreateFacilityResponseDataWrapperCopyWith<$Res> {
  _$CreateFacilityResponseDataWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFacilityResponseDataWrapper
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
              as CreateFacilityResponseDataModel,
    ) as $Val);
  }

  /// Create a copy of CreateFacilityResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateFacilityResponseDataModelCopyWith<$Res> get facility {
    return $CreateFacilityResponseDataModelCopyWith<$Res>(_value.facility,
        (value) {
      return _then(_value.copyWith(facility: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateFacilityResponseDataWrapperImplCopyWith<$Res>
    implements $CreateFacilityResponseDataWrapperCopyWith<$Res> {
  factory _$$CreateFacilityResponseDataWrapperImplCopyWith(
          _$CreateFacilityResponseDataWrapperImpl value,
          $Res Function(_$CreateFacilityResponseDataWrapperImpl) then) =
      __$$CreateFacilityResponseDataWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Facility') CreateFacilityResponseDataModel facility});

  @override
  $CreateFacilityResponseDataModelCopyWith<$Res> get facility;
}

/// @nodoc
class __$$CreateFacilityResponseDataWrapperImplCopyWithImpl<$Res>
    extends _$CreateFacilityResponseDataWrapperCopyWithImpl<$Res,
        _$CreateFacilityResponseDataWrapperImpl>
    implements _$$CreateFacilityResponseDataWrapperImplCopyWith<$Res> {
  __$$CreateFacilityResponseDataWrapperImplCopyWithImpl(
      _$CreateFacilityResponseDataWrapperImpl _value,
      $Res Function(_$CreateFacilityResponseDataWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateFacilityResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facility = null,
  }) {
    return _then(_$CreateFacilityResponseDataWrapperImpl(
      facility: null == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as CreateFacilityResponseDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateFacilityResponseDataWrapperImpl
    with DiagnosticableTreeMixin
    implements _CreateFacilityResponseDataWrapper {
  const _$CreateFacilityResponseDataWrapperImpl(
      {@JsonKey(name: 'Facility') required this.facility});

  factory _$CreateFacilityResponseDataWrapperImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateFacilityResponseDataWrapperImplFromJson(json);

  @override
  @JsonKey(name: 'Facility')
  final CreateFacilityResponseDataModel facility;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateFacilityResponseDataWrapper(facility: $facility)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateFacilityResponseDataWrapper'))
      ..add(DiagnosticsProperty('facility', facility));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFacilityResponseDataWrapperImpl &&
            (identical(other.facility, facility) ||
                other.facility == facility));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, facility);

  /// Create a copy of CreateFacilityResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFacilityResponseDataWrapperImplCopyWith<
          _$CreateFacilityResponseDataWrapperImpl>
      get copyWith => __$$CreateFacilityResponseDataWrapperImplCopyWithImpl<
          _$CreateFacilityResponseDataWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFacilityResponseDataWrapperImplToJson(
      this,
    );
  }
}

abstract class _CreateFacilityResponseDataWrapper
    implements CreateFacilityResponseDataWrapper {
  const factory _CreateFacilityResponseDataWrapper(
          {@JsonKey(name: 'Facility')
          required final CreateFacilityResponseDataModel facility}) =
      _$CreateFacilityResponseDataWrapperImpl;

  factory _CreateFacilityResponseDataWrapper.fromJson(
          Map<String, dynamic> json) =
      _$CreateFacilityResponseDataWrapperImpl.fromJson;

  @override
  @JsonKey(name: 'Facility')
  CreateFacilityResponseDataModel get facility;

  /// Create a copy of CreateFacilityResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFacilityResponseDataWrapperImplCopyWith<
          _$CreateFacilityResponseDataWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}
