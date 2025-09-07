// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_leagues_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllLeaguesResponseModel _$GetAllLeaguesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetAllLeaguesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllLeaguesResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<GetAllLeaguesDataResponse> get data =>
      throw _privateConstructorUsedError;

  /// Serializes this GetAllLeaguesResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAllLeaguesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllLeaguesResponseModelCopyWith<GetAllLeaguesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllLeaguesResponseModelCopyWith<$Res> {
  factory $GetAllLeaguesResponseModelCopyWith(GetAllLeaguesResponseModel value,
          $Res Function(GetAllLeaguesResponseModel) then) =
      _$GetAllLeaguesResponseModelCopyWithImpl<$Res,
          GetAllLeaguesResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      List<GetAllLeaguesDataResponse> data});
}

/// @nodoc
class _$GetAllLeaguesResponseModelCopyWithImpl<$Res,
        $Val extends GetAllLeaguesResponseModel>
    implements $GetAllLeaguesResponseModelCopyWith<$Res> {
  _$GetAllLeaguesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllLeaguesResponseModel
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
              as List<GetAllLeaguesDataResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllLeaguesResponseModelImplCopyWith<$Res>
    implements $GetAllLeaguesResponseModelCopyWith<$Res> {
  factory _$$GetAllLeaguesResponseModelImplCopyWith(
          _$GetAllLeaguesResponseModelImpl value,
          $Res Function(_$GetAllLeaguesResponseModelImpl) then) =
      __$$GetAllLeaguesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      List<GetAllLeaguesDataResponse> data});
}

/// @nodoc
class __$$GetAllLeaguesResponseModelImplCopyWithImpl<$Res>
    extends _$GetAllLeaguesResponseModelCopyWithImpl<$Res,
        _$GetAllLeaguesResponseModelImpl>
    implements _$$GetAllLeaguesResponseModelImplCopyWith<$Res> {
  __$$GetAllLeaguesResponseModelImplCopyWithImpl(
      _$GetAllLeaguesResponseModelImpl _value,
      $Res Function(_$GetAllLeaguesResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllLeaguesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$GetAllLeaguesResponseModelImpl(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetAllLeaguesDataResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllLeaguesResponseModelImpl
    with DiagnosticableTreeMixin
    implements _GetAllLeaguesResponseModel {
  const _$GetAllLeaguesResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required final List<GetAllLeaguesDataResponse> data})
      : _data = data;

  factory _$GetAllLeaguesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllLeaguesResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  final List<GetAllLeaguesDataResponse> _data;
  @override
  List<GetAllLeaguesDataResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetAllLeaguesResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetAllLeaguesResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllLeaguesResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, statusCode, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetAllLeaguesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllLeaguesResponseModelImplCopyWith<_$GetAllLeaguesResponseModelImpl>
      get copyWith => __$$GetAllLeaguesResponseModelImplCopyWithImpl<
          _$GetAllLeaguesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllLeaguesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllLeaguesResponseModel
    implements GetAllLeaguesResponseModel {
  const factory _GetAllLeaguesResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final List<GetAllLeaguesDataResponse> data}) =
      _$GetAllLeaguesResponseModelImpl;

  factory _GetAllLeaguesResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetAllLeaguesResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  List<GetAllLeaguesDataResponse> get data;

  /// Create a copy of GetAllLeaguesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllLeaguesResponseModelImplCopyWith<_$GetAllLeaguesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
