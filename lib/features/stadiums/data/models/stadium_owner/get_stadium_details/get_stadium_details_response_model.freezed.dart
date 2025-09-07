// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_stadium_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStadiumDetailsResponseModel _$GetStadiumDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetStadiumDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetStadiumDetailsResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetStadiumDetailsDataWrapper get data => throw _privateConstructorUsedError;

  /// Serializes this GetStadiumDetailsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetStadiumDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStadiumDetailsResponseModelCopyWith<GetStadiumDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStadiumDetailsResponseModelCopyWith<$Res> {
  factory $GetStadiumDetailsResponseModelCopyWith(
          GetStadiumDetailsResponseModel value,
          $Res Function(GetStadiumDetailsResponseModel) then) =
      _$GetStadiumDetailsResponseModelCopyWithImpl<$Res,
          GetStadiumDetailsResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      GetStadiumDetailsDataWrapper data});

  $GetStadiumDetailsDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class _$GetStadiumDetailsResponseModelCopyWithImpl<$Res,
        $Val extends GetStadiumDetailsResponseModel>
    implements $GetStadiumDetailsResponseModelCopyWith<$Res> {
  _$GetStadiumDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStadiumDetailsResponseModel
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
              as GetStadiumDetailsDataWrapper,
    ) as $Val);
  }

  /// Create a copy of GetStadiumDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetStadiumDetailsDataWrapperCopyWith<$Res> get data {
    return $GetStadiumDetailsDataWrapperCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetStadiumDetailsResponseModelImplCopyWith<$Res>
    implements $GetStadiumDetailsResponseModelCopyWith<$Res> {
  factory _$$GetStadiumDetailsResponseModelImplCopyWith(
          _$GetStadiumDetailsResponseModelImpl value,
          $Res Function(_$GetStadiumDetailsResponseModelImpl) then) =
      __$$GetStadiumDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      GetStadiumDetailsDataWrapper data});

  @override
  $GetStadiumDetailsDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetStadiumDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$GetStadiumDetailsResponseModelCopyWithImpl<$Res,
        _$GetStadiumDetailsResponseModelImpl>
    implements _$$GetStadiumDetailsResponseModelImplCopyWith<$Res> {
  __$$GetStadiumDetailsResponseModelImplCopyWithImpl(
      _$GetStadiumDetailsResponseModelImpl _value,
      $Res Function(_$GetStadiumDetailsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetStadiumDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$GetStadiumDetailsResponseModelImpl(
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
              as GetStadiumDetailsDataWrapper,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStadiumDetailsResponseModelImpl
    with DiagnosticableTreeMixin
    implements _GetStadiumDetailsResponseModel {
  const _$GetStadiumDetailsResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$GetStadiumDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetStadiumDetailsResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final GetStadiumDetailsDataWrapper data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetStadiumDetailsResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetStadiumDetailsResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStadiumDetailsResponseModelImpl &&
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

  /// Create a copy of GetStadiumDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStadiumDetailsResponseModelImplCopyWith<
          _$GetStadiumDetailsResponseModelImpl>
      get copyWith => __$$GetStadiumDetailsResponseModelImplCopyWithImpl<
          _$GetStadiumDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStadiumDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetStadiumDetailsResponseModel
    implements GetStadiumDetailsResponseModel {
  const factory _GetStadiumDetailsResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final GetStadiumDetailsDataWrapper data}) =
      _$GetStadiumDetailsResponseModelImpl;

  factory _GetStadiumDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetStadiumDetailsResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  GetStadiumDetailsDataWrapper get data;

  /// Create a copy of GetStadiumDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStadiumDetailsResponseModelImplCopyWith<
          _$GetStadiumDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetStadiumDetailsDataWrapper _$GetStadiumDetailsDataWrapperFromJson(
    Map<String, dynamic> json) {
  return _GetStadiumDetailsDataWrapper.fromJson(json);
}

/// @nodoc
mixin _$GetStadiumDetailsDataWrapper {
  @JsonKey(name: 'Stadium')
  GetStadiumDetailsDataResponse get stadium =>
      throw _privateConstructorUsedError;

  /// Serializes this GetStadiumDetailsDataWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetStadiumDetailsDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStadiumDetailsDataWrapperCopyWith<GetStadiumDetailsDataWrapper>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStadiumDetailsDataWrapperCopyWith<$Res> {
  factory $GetStadiumDetailsDataWrapperCopyWith(
          GetStadiumDetailsDataWrapper value,
          $Res Function(GetStadiumDetailsDataWrapper) then) =
      _$GetStadiumDetailsDataWrapperCopyWithImpl<$Res,
          GetStadiumDetailsDataWrapper>;
  @useResult
  $Res call({@JsonKey(name: 'Stadium') GetStadiumDetailsDataResponse stadium});

  $GetStadiumDetailsDataResponseCopyWith<$Res> get stadium;
}

/// @nodoc
class _$GetStadiumDetailsDataWrapperCopyWithImpl<$Res,
        $Val extends GetStadiumDetailsDataWrapper>
    implements $GetStadiumDetailsDataWrapperCopyWith<$Res> {
  _$GetStadiumDetailsDataWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStadiumDetailsDataWrapper
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
              as GetStadiumDetailsDataResponse,
    ) as $Val);
  }

  /// Create a copy of GetStadiumDetailsDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetStadiumDetailsDataResponseCopyWith<$Res> get stadium {
    return $GetStadiumDetailsDataResponseCopyWith<$Res>(_value.stadium,
        (value) {
      return _then(_value.copyWith(stadium: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetStadiumDetailsDataWrapperImplCopyWith<$Res>
    implements $GetStadiumDetailsDataWrapperCopyWith<$Res> {
  factory _$$GetStadiumDetailsDataWrapperImplCopyWith(
          _$GetStadiumDetailsDataWrapperImpl value,
          $Res Function(_$GetStadiumDetailsDataWrapperImpl) then) =
      __$$GetStadiumDetailsDataWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Stadium') GetStadiumDetailsDataResponse stadium});

  @override
  $GetStadiumDetailsDataResponseCopyWith<$Res> get stadium;
}

/// @nodoc
class __$$GetStadiumDetailsDataWrapperImplCopyWithImpl<$Res>
    extends _$GetStadiumDetailsDataWrapperCopyWithImpl<$Res,
        _$GetStadiumDetailsDataWrapperImpl>
    implements _$$GetStadiumDetailsDataWrapperImplCopyWith<$Res> {
  __$$GetStadiumDetailsDataWrapperImplCopyWithImpl(
      _$GetStadiumDetailsDataWrapperImpl _value,
      $Res Function(_$GetStadiumDetailsDataWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetStadiumDetailsDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadium = null,
  }) {
    return _then(_$GetStadiumDetailsDataWrapperImpl(
      stadium: null == stadium
          ? _value.stadium
          : stadium // ignore: cast_nullable_to_non_nullable
              as GetStadiumDetailsDataResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStadiumDetailsDataWrapperImpl
    with DiagnosticableTreeMixin
    implements _GetStadiumDetailsDataWrapper {
  const _$GetStadiumDetailsDataWrapperImpl(
      {@JsonKey(name: 'Stadium') required this.stadium});

  factory _$GetStadiumDetailsDataWrapperImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetStadiumDetailsDataWrapperImplFromJson(json);

  @override
  @JsonKey(name: 'Stadium')
  final GetStadiumDetailsDataResponse stadium;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetStadiumDetailsDataWrapper(stadium: $stadium)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetStadiumDetailsDataWrapper'))
      ..add(DiagnosticsProperty('stadium', stadium));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStadiumDetailsDataWrapperImpl &&
            (identical(other.stadium, stadium) || other.stadium == stadium));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stadium);

  /// Create a copy of GetStadiumDetailsDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStadiumDetailsDataWrapperImplCopyWith<
          _$GetStadiumDetailsDataWrapperImpl>
      get copyWith => __$$GetStadiumDetailsDataWrapperImplCopyWithImpl<
          _$GetStadiumDetailsDataWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStadiumDetailsDataWrapperImplToJson(
      this,
    );
  }
}

abstract class _GetStadiumDetailsDataWrapper
    implements GetStadiumDetailsDataWrapper {
  const factory _GetStadiumDetailsDataWrapper(
          {@JsonKey(name: 'Stadium')
          required final GetStadiumDetailsDataResponse stadium}) =
      _$GetStadiumDetailsDataWrapperImpl;

  factory _GetStadiumDetailsDataWrapper.fromJson(Map<String, dynamic> json) =
      _$GetStadiumDetailsDataWrapperImpl.fromJson;

  @override
  @JsonKey(name: 'Stadium')
  GetStadiumDetailsDataResponse get stadium;

  /// Create a copy of GetStadiumDetailsDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStadiumDetailsDataWrapperImplCopyWith<
          _$GetStadiumDetailsDataWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}
