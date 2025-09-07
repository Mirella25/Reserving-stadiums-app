// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_facility_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFacilityDetailsResponseModel _$GetFacilityDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetFacilityDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetFacilityDetailsResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetFacilityDetailsResponseDataWrapper get data =>
      throw _privateConstructorUsedError;

  /// Serializes this GetFacilityDetailsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetFacilityDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFacilityDetailsResponseModelCopyWith<GetFacilityDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFacilityDetailsResponseModelCopyWith<$Res> {
  factory $GetFacilityDetailsResponseModelCopyWith(
          GetFacilityDetailsResponseModel value,
          $Res Function(GetFacilityDetailsResponseModel) then) =
      _$GetFacilityDetailsResponseModelCopyWithImpl<$Res,
          GetFacilityDetailsResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      GetFacilityDetailsResponseDataWrapper data});

  $GetFacilityDetailsResponseDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class _$GetFacilityDetailsResponseModelCopyWithImpl<$Res,
        $Val extends GetFacilityDetailsResponseModel>
    implements $GetFacilityDetailsResponseModelCopyWith<$Res> {
  _$GetFacilityDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFacilityDetailsResponseModel
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
              as GetFacilityDetailsResponseDataWrapper,
    ) as $Val);
  }

  /// Create a copy of GetFacilityDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetFacilityDetailsResponseDataWrapperCopyWith<$Res> get data {
    return $GetFacilityDetailsResponseDataWrapperCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetFacilityDetailsResponseModelImplCopyWith<$Res>
    implements $GetFacilityDetailsResponseModelCopyWith<$Res> {
  factory _$$GetFacilityDetailsResponseModelImplCopyWith(
          _$GetFacilityDetailsResponseModelImpl value,
          $Res Function(_$GetFacilityDetailsResponseModelImpl) then) =
      __$$GetFacilityDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      GetFacilityDetailsResponseDataWrapper data});

  @override
  $GetFacilityDetailsResponseDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetFacilityDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$GetFacilityDetailsResponseModelCopyWithImpl<$Res,
        _$GetFacilityDetailsResponseModelImpl>
    implements _$$GetFacilityDetailsResponseModelImplCopyWith<$Res> {
  __$$GetFacilityDetailsResponseModelImplCopyWithImpl(
      _$GetFacilityDetailsResponseModelImpl _value,
      $Res Function(_$GetFacilityDetailsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetFacilityDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$GetFacilityDetailsResponseModelImpl(
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
              as GetFacilityDetailsResponseDataWrapper,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFacilityDetailsResponseModelImpl
    with DiagnosticableTreeMixin
    implements _GetFacilityDetailsResponseModel {
  const _$GetFacilityDetailsResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$GetFacilityDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetFacilityDetailsResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final GetFacilityDetailsResponseDataWrapper data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetFacilityDetailsResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetFacilityDetailsResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFacilityDetailsResponseModelImpl &&
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

  /// Create a copy of GetFacilityDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFacilityDetailsResponseModelImplCopyWith<
          _$GetFacilityDetailsResponseModelImpl>
      get copyWith => __$$GetFacilityDetailsResponseModelImplCopyWithImpl<
          _$GetFacilityDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFacilityDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetFacilityDetailsResponseModel
    implements GetFacilityDetailsResponseModel {
  const factory _GetFacilityDetailsResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final GetFacilityDetailsResponseDataWrapper data}) =
      _$GetFacilityDetailsResponseModelImpl;

  factory _GetFacilityDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetFacilityDetailsResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  GetFacilityDetailsResponseDataWrapper get data;

  /// Create a copy of GetFacilityDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFacilityDetailsResponseModelImplCopyWith<
          _$GetFacilityDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetFacilityDetailsResponseDataWrapper
    _$GetFacilityDetailsResponseDataWrapperFromJson(Map<String, dynamic> json) {
  return _GetFacilityDetailsResponseDataWrapper.fromJson(json);
}

/// @nodoc
mixin _$GetFacilityDetailsResponseDataWrapper {
  @JsonKey(name: 'Facility')
  GetFacilityDetailsResponseDataModel get facility =>
      throw _privateConstructorUsedError;

  /// Serializes this GetFacilityDetailsResponseDataWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetFacilityDetailsResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFacilityDetailsResponseDataWrapperCopyWith<
          GetFacilityDetailsResponseDataWrapper>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFacilityDetailsResponseDataWrapperCopyWith<$Res> {
  factory $GetFacilityDetailsResponseDataWrapperCopyWith(
          GetFacilityDetailsResponseDataWrapper value,
          $Res Function(GetFacilityDetailsResponseDataWrapper) then) =
      _$GetFacilityDetailsResponseDataWrapperCopyWithImpl<$Res,
          GetFacilityDetailsResponseDataWrapper>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Facility')
      GetFacilityDetailsResponseDataModel facility});

  $GetFacilityDetailsResponseDataModelCopyWith<$Res> get facility;
}

/// @nodoc
class _$GetFacilityDetailsResponseDataWrapperCopyWithImpl<$Res,
        $Val extends GetFacilityDetailsResponseDataWrapper>
    implements $GetFacilityDetailsResponseDataWrapperCopyWith<$Res> {
  _$GetFacilityDetailsResponseDataWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFacilityDetailsResponseDataWrapper
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
              as GetFacilityDetailsResponseDataModel,
    ) as $Val);
  }

  /// Create a copy of GetFacilityDetailsResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetFacilityDetailsResponseDataModelCopyWith<$Res> get facility {
    return $GetFacilityDetailsResponseDataModelCopyWith<$Res>(_value.facility,
        (value) {
      return _then(_value.copyWith(facility: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetFacilityDetailsResponseDataWrapperImplCopyWith<$Res>
    implements $GetFacilityDetailsResponseDataWrapperCopyWith<$Res> {
  factory _$$GetFacilityDetailsResponseDataWrapperImplCopyWith(
          _$GetFacilityDetailsResponseDataWrapperImpl value,
          $Res Function(_$GetFacilityDetailsResponseDataWrapperImpl) then) =
      __$$GetFacilityDetailsResponseDataWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Facility')
      GetFacilityDetailsResponseDataModel facility});

  @override
  $GetFacilityDetailsResponseDataModelCopyWith<$Res> get facility;
}

/// @nodoc
class __$$GetFacilityDetailsResponseDataWrapperImplCopyWithImpl<$Res>
    extends _$GetFacilityDetailsResponseDataWrapperCopyWithImpl<$Res,
        _$GetFacilityDetailsResponseDataWrapperImpl>
    implements _$$GetFacilityDetailsResponseDataWrapperImplCopyWith<$Res> {
  __$$GetFacilityDetailsResponseDataWrapperImplCopyWithImpl(
      _$GetFacilityDetailsResponseDataWrapperImpl _value,
      $Res Function(_$GetFacilityDetailsResponseDataWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetFacilityDetailsResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facility = null,
  }) {
    return _then(_$GetFacilityDetailsResponseDataWrapperImpl(
      facility: null == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as GetFacilityDetailsResponseDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFacilityDetailsResponseDataWrapperImpl
    with DiagnosticableTreeMixin
    implements _GetFacilityDetailsResponseDataWrapper {
  const _$GetFacilityDetailsResponseDataWrapperImpl(
      {@JsonKey(name: 'Facility') required this.facility});

  factory _$GetFacilityDetailsResponseDataWrapperImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetFacilityDetailsResponseDataWrapperImplFromJson(json);

  @override
  @JsonKey(name: 'Facility')
  final GetFacilityDetailsResponseDataModel facility;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetFacilityDetailsResponseDataWrapper(facility: $facility)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'GetFacilityDetailsResponseDataWrapper'))
      ..add(DiagnosticsProperty('facility', facility));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFacilityDetailsResponseDataWrapperImpl &&
            (identical(other.facility, facility) ||
                other.facility == facility));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, facility);

  /// Create a copy of GetFacilityDetailsResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFacilityDetailsResponseDataWrapperImplCopyWith<
          _$GetFacilityDetailsResponseDataWrapperImpl>
      get copyWith => __$$GetFacilityDetailsResponseDataWrapperImplCopyWithImpl<
          _$GetFacilityDetailsResponseDataWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFacilityDetailsResponseDataWrapperImplToJson(
      this,
    );
  }
}

abstract class _GetFacilityDetailsResponseDataWrapper
    implements GetFacilityDetailsResponseDataWrapper {
  const factory _GetFacilityDetailsResponseDataWrapper(
          {@JsonKey(name: 'Facility')
          required final GetFacilityDetailsResponseDataModel facility}) =
      _$GetFacilityDetailsResponseDataWrapperImpl;

  factory _GetFacilityDetailsResponseDataWrapper.fromJson(
          Map<String, dynamic> json) =
      _$GetFacilityDetailsResponseDataWrapperImpl.fromJson;

  @override
  @JsonKey(name: 'Facility')
  GetFacilityDetailsResponseDataModel get facility;

  /// Create a copy of GetFacilityDetailsResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFacilityDetailsResponseDataWrapperImplCopyWith<
          _$GetFacilityDetailsResponseDataWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}
