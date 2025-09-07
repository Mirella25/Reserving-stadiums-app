// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_stadium_facilities_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStadiumFacilitiesResponseModel _$GetStadiumFacilitiesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetStadiumFacilitiesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetStadiumFacilitiesResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message =>
      throw _privateConstructorUsedError; // IMPORTANT: data is a single wrapper object (not a list)
  GetStadiumFacilitiesResponseDataWrapper get data =>
      throw _privateConstructorUsedError;

  /// Serializes this GetStadiumFacilitiesResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetStadiumFacilitiesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStadiumFacilitiesResponseModelCopyWith<GetStadiumFacilitiesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStadiumFacilitiesResponseModelCopyWith<$Res> {
  factory $GetStadiumFacilitiesResponseModelCopyWith(
          GetStadiumFacilitiesResponseModel value,
          $Res Function(GetStadiumFacilitiesResponseModel) then) =
      _$GetStadiumFacilitiesResponseModelCopyWithImpl<$Res,
          GetStadiumFacilitiesResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      GetStadiumFacilitiesResponseDataWrapper data});

  $GetStadiumFacilitiesResponseDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class _$GetStadiumFacilitiesResponseModelCopyWithImpl<$Res,
        $Val extends GetStadiumFacilitiesResponseModel>
    implements $GetStadiumFacilitiesResponseModelCopyWith<$Res> {
  _$GetStadiumFacilitiesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStadiumFacilitiesResponseModel
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
              as GetStadiumFacilitiesResponseDataWrapper,
    ) as $Val);
  }

  /// Create a copy of GetStadiumFacilitiesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetStadiumFacilitiesResponseDataWrapperCopyWith<$Res> get data {
    return $GetStadiumFacilitiesResponseDataWrapperCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetStadiumFacilitiesResponseModelImplCopyWith<$Res>
    implements $GetStadiumFacilitiesResponseModelCopyWith<$Res> {
  factory _$$GetStadiumFacilitiesResponseModelImplCopyWith(
          _$GetStadiumFacilitiesResponseModelImpl value,
          $Res Function(_$GetStadiumFacilitiesResponseModelImpl) then) =
      __$$GetStadiumFacilitiesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      GetStadiumFacilitiesResponseDataWrapper data});

  @override
  $GetStadiumFacilitiesResponseDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetStadiumFacilitiesResponseModelImplCopyWithImpl<$Res>
    extends _$GetStadiumFacilitiesResponseModelCopyWithImpl<$Res,
        _$GetStadiumFacilitiesResponseModelImpl>
    implements _$$GetStadiumFacilitiesResponseModelImplCopyWith<$Res> {
  __$$GetStadiumFacilitiesResponseModelImplCopyWithImpl(
      _$GetStadiumFacilitiesResponseModelImpl _value,
      $Res Function(_$GetStadiumFacilitiesResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetStadiumFacilitiesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$GetStadiumFacilitiesResponseModelImpl(
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
              as GetStadiumFacilitiesResponseDataWrapper,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStadiumFacilitiesResponseModelImpl
    with DiagnosticableTreeMixin
    implements _GetStadiumFacilitiesResponseModel {
  const _$GetStadiumFacilitiesResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$GetStadiumFacilitiesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetStadiumFacilitiesResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
// IMPORTANT: data is a single wrapper object (not a list)
  @override
  final GetStadiumFacilitiesResponseDataWrapper data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetStadiumFacilitiesResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetStadiumFacilitiesResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStadiumFacilitiesResponseModelImpl &&
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

  /// Create a copy of GetStadiumFacilitiesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStadiumFacilitiesResponseModelImplCopyWith<
          _$GetStadiumFacilitiesResponseModelImpl>
      get copyWith => __$$GetStadiumFacilitiesResponseModelImplCopyWithImpl<
          _$GetStadiumFacilitiesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStadiumFacilitiesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetStadiumFacilitiesResponseModel
    implements GetStadiumFacilitiesResponseModel {
  const factory _GetStadiumFacilitiesResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final GetStadiumFacilitiesResponseDataWrapper data}) =
      _$GetStadiumFacilitiesResponseModelImpl;

  factory _GetStadiumFacilitiesResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetStadiumFacilitiesResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String?
      get message; // IMPORTANT: data is a single wrapper object (not a list)
  @override
  GetStadiumFacilitiesResponseDataWrapper get data;

  /// Create a copy of GetStadiumFacilitiesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStadiumFacilitiesResponseModelImplCopyWith<
          _$GetStadiumFacilitiesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetStadiumFacilitiesResponseDataWrapper
    _$GetStadiumFacilitiesResponseDataWrapperFromJson(
        Map<String, dynamic> json) {
  return _GetStadiumFacilitiesResponseDataWrapper.fromJson(json);
}

/// @nodoc
mixin _$GetStadiumFacilitiesResponseDataWrapper {
  @JsonKey(name: 'Facilities')
  List<GetStadiumFacilitiesDataResponseModel> get facilities =>
      throw _privateConstructorUsedError;

  /// Serializes this GetStadiumFacilitiesResponseDataWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetStadiumFacilitiesResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStadiumFacilitiesResponseDataWrapperCopyWith<
          GetStadiumFacilitiesResponseDataWrapper>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStadiumFacilitiesResponseDataWrapperCopyWith<$Res> {
  factory $GetStadiumFacilitiesResponseDataWrapperCopyWith(
          GetStadiumFacilitiesResponseDataWrapper value,
          $Res Function(GetStadiumFacilitiesResponseDataWrapper) then) =
      _$GetStadiumFacilitiesResponseDataWrapperCopyWithImpl<$Res,
          GetStadiumFacilitiesResponseDataWrapper>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Facilities')
      List<GetStadiumFacilitiesDataResponseModel> facilities});
}

/// @nodoc
class _$GetStadiumFacilitiesResponseDataWrapperCopyWithImpl<$Res,
        $Val extends GetStadiumFacilitiesResponseDataWrapper>
    implements $GetStadiumFacilitiesResponseDataWrapperCopyWith<$Res> {
  _$GetStadiumFacilitiesResponseDataWrapperCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStadiumFacilitiesResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilities = null,
  }) {
    return _then(_value.copyWith(
      facilities: null == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<GetStadiumFacilitiesDataResponseModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStadiumFacilitiesResponseDataWrapperImplCopyWith<$Res>
    implements $GetStadiumFacilitiesResponseDataWrapperCopyWith<$Res> {
  factory _$$GetStadiumFacilitiesResponseDataWrapperImplCopyWith(
          _$GetStadiumFacilitiesResponseDataWrapperImpl value,
          $Res Function(_$GetStadiumFacilitiesResponseDataWrapperImpl) then) =
      __$$GetStadiumFacilitiesResponseDataWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Facilities')
      List<GetStadiumFacilitiesDataResponseModel> facilities});
}

/// @nodoc
class __$$GetStadiumFacilitiesResponseDataWrapperImplCopyWithImpl<$Res>
    extends _$GetStadiumFacilitiesResponseDataWrapperCopyWithImpl<$Res,
        _$GetStadiumFacilitiesResponseDataWrapperImpl>
    implements _$$GetStadiumFacilitiesResponseDataWrapperImplCopyWith<$Res> {
  __$$GetStadiumFacilitiesResponseDataWrapperImplCopyWithImpl(
      _$GetStadiumFacilitiesResponseDataWrapperImpl _value,
      $Res Function(_$GetStadiumFacilitiesResponseDataWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetStadiumFacilitiesResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilities = null,
  }) {
    return _then(_$GetStadiumFacilitiesResponseDataWrapperImpl(
      facilities: null == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<GetStadiumFacilitiesDataResponseModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStadiumFacilitiesResponseDataWrapperImpl
    with DiagnosticableTreeMixin
    implements _GetStadiumFacilitiesResponseDataWrapper {
  const _$GetStadiumFacilitiesResponseDataWrapperImpl(
      {@JsonKey(name: 'Facilities')
      required final List<GetStadiumFacilitiesDataResponseModel> facilities})
      : _facilities = facilities;

  factory _$GetStadiumFacilitiesResponseDataWrapperImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetStadiumFacilitiesResponseDataWrapperImplFromJson(json);

  final List<GetStadiumFacilitiesDataResponseModel> _facilities;
  @override
  @JsonKey(name: 'Facilities')
  List<GetStadiumFacilitiesDataResponseModel> get facilities {
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_facilities);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetStadiumFacilitiesResponseDataWrapper(facilities: $facilities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'GetStadiumFacilitiesResponseDataWrapper'))
      ..add(DiagnosticsProperty('facilities', facilities));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStadiumFacilitiesResponseDataWrapperImpl &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_facilities));

  /// Create a copy of GetStadiumFacilitiesResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStadiumFacilitiesResponseDataWrapperImplCopyWith<
          _$GetStadiumFacilitiesResponseDataWrapperImpl>
      get copyWith =>
          __$$GetStadiumFacilitiesResponseDataWrapperImplCopyWithImpl<
              _$GetStadiumFacilitiesResponseDataWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStadiumFacilitiesResponseDataWrapperImplToJson(
      this,
    );
  }
}

abstract class _GetStadiumFacilitiesResponseDataWrapper
    implements GetStadiumFacilitiesResponseDataWrapper {
  const factory _GetStadiumFacilitiesResponseDataWrapper(
      {@JsonKey(name: 'Facilities')
      required final List<GetStadiumFacilitiesDataResponseModel>
          facilities}) = _$GetStadiumFacilitiesResponseDataWrapperImpl;

  factory _GetStadiumFacilitiesResponseDataWrapper.fromJson(
          Map<String, dynamic> json) =
      _$GetStadiumFacilitiesResponseDataWrapperImpl.fromJson;

  @override
  @JsonKey(name: 'Facilities')
  List<GetStadiumFacilitiesDataResponseModel> get facilities;

  /// Create a copy of GetStadiumFacilitiesResponseDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStadiumFacilitiesResponseDataWrapperImplCopyWith<
          _$GetStadiumFacilitiesResponseDataWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}
