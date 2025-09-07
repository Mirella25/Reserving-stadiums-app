// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_stadium_request_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStadiumRequestDetailsResponseModel
    _$GetStadiumRequestDetailsResponseModelFromJson(Map<String, dynamic> json) {
  return _GetStadiumRequestDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetStadiumRequestDetailsResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetStadiumRequestDetailsDataResponseModel get data =>
      throw _privateConstructorUsedError;

  /// Serializes this GetStadiumRequestDetailsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetStadiumRequestDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStadiumRequestDetailsResponseModelCopyWith<
          GetStadiumRequestDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStadiumRequestDetailsResponseModelCopyWith<$Res> {
  factory $GetStadiumRequestDetailsResponseModelCopyWith(
          GetStadiumRequestDetailsResponseModel value,
          $Res Function(GetStadiumRequestDetailsResponseModel) then) =
      _$GetStadiumRequestDetailsResponseModelCopyWithImpl<$Res,
          GetStadiumRequestDetailsResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      GetStadiumRequestDetailsDataResponseModel data});

  $GetStadiumRequestDetailsDataResponseModelCopyWith<$Res> get data;
}

/// @nodoc
class _$GetStadiumRequestDetailsResponseModelCopyWithImpl<$Res,
        $Val extends GetStadiumRequestDetailsResponseModel>
    implements $GetStadiumRequestDetailsResponseModelCopyWith<$Res> {
  _$GetStadiumRequestDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStadiumRequestDetailsResponseModel
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
              as GetStadiumRequestDetailsDataResponseModel,
    ) as $Val);
  }

  /// Create a copy of GetStadiumRequestDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetStadiumRequestDetailsDataResponseModelCopyWith<$Res> get data {
    return $GetStadiumRequestDetailsDataResponseModelCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetStadiumRequestDetailsResponseModelImplCopyWith<$Res>
    implements $GetStadiumRequestDetailsResponseModelCopyWith<$Res> {
  factory _$$GetStadiumRequestDetailsResponseModelImplCopyWith(
          _$GetStadiumRequestDetailsResponseModelImpl value,
          $Res Function(_$GetStadiumRequestDetailsResponseModelImpl) then) =
      __$$GetStadiumRequestDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      GetStadiumRequestDetailsDataResponseModel data});

  @override
  $GetStadiumRequestDetailsDataResponseModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetStadiumRequestDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$GetStadiumRequestDetailsResponseModelCopyWithImpl<$Res,
        _$GetStadiumRequestDetailsResponseModelImpl>
    implements _$$GetStadiumRequestDetailsResponseModelImplCopyWith<$Res> {
  __$$GetStadiumRequestDetailsResponseModelImplCopyWithImpl(
      _$GetStadiumRequestDetailsResponseModelImpl _value,
      $Res Function(_$GetStadiumRequestDetailsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetStadiumRequestDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$GetStadiumRequestDetailsResponseModelImpl(
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
              as GetStadiumRequestDetailsDataResponseModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStadiumRequestDetailsResponseModelImpl
    with DiagnosticableTreeMixin
    implements _GetStadiumRequestDetailsResponseModel {
  const _$GetStadiumRequestDetailsResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$GetStadiumRequestDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetStadiumRequestDetailsResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final GetStadiumRequestDetailsDataResponseModel data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetStadiumRequestDetailsResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'GetStadiumRequestDetailsResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStadiumRequestDetailsResponseModelImpl &&
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

  /// Create a copy of GetStadiumRequestDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStadiumRequestDetailsResponseModelImplCopyWith<
          _$GetStadiumRequestDetailsResponseModelImpl>
      get copyWith => __$$GetStadiumRequestDetailsResponseModelImplCopyWithImpl<
          _$GetStadiumRequestDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStadiumRequestDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetStadiumRequestDetailsResponseModel
    implements GetStadiumRequestDetailsResponseModel {
  const factory _GetStadiumRequestDetailsResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final GetStadiumRequestDetailsDataResponseModel data}) =
      _$GetStadiumRequestDetailsResponseModelImpl;

  factory _GetStadiumRequestDetailsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetStadiumRequestDetailsResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  GetStadiumRequestDetailsDataResponseModel get data;

  /// Create a copy of GetStadiumRequestDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStadiumRequestDetailsResponseModelImplCopyWith<
          _$GetStadiumRequestDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
