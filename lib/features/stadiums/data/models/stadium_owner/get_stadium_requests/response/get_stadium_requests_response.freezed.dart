// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_stadium_requests_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStadiumRequestsResponse _$GetStadiumRequestsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetStadiumRequestsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetStadiumRequestsResponse {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  RequestsDataContainer get data => throw _privateConstructorUsedError;

  /// Serializes this GetStadiumRequestsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetStadiumRequestsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStadiumRequestsResponseCopyWith<GetStadiumRequestsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStadiumRequestsResponseCopyWith<$Res> {
  factory $GetStadiumRequestsResponseCopyWith(GetStadiumRequestsResponse value,
          $Res Function(GetStadiumRequestsResponse) then) =
      _$GetStadiumRequestsResponseCopyWithImpl<$Res,
          GetStadiumRequestsResponse>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      RequestsDataContainer data});

  $RequestsDataContainerCopyWith<$Res> get data;
}

/// @nodoc
class _$GetStadiumRequestsResponseCopyWithImpl<$Res,
        $Val extends GetStadiumRequestsResponse>
    implements $GetStadiumRequestsResponseCopyWith<$Res> {
  _$GetStadiumRequestsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStadiumRequestsResponse
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
              as RequestsDataContainer,
    ) as $Val);
  }

  /// Create a copy of GetStadiumRequestsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestsDataContainerCopyWith<$Res> get data {
    return $RequestsDataContainerCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetStadiumRequestsResponseImplCopyWith<$Res>
    implements $GetStadiumRequestsResponseCopyWith<$Res> {
  factory _$$GetStadiumRequestsResponseImplCopyWith(
          _$GetStadiumRequestsResponseImpl value,
          $Res Function(_$GetStadiumRequestsResponseImpl) then) =
      __$$GetStadiumRequestsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      RequestsDataContainer data});

  @override
  $RequestsDataContainerCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetStadiumRequestsResponseImplCopyWithImpl<$Res>
    extends _$GetStadiumRequestsResponseCopyWithImpl<$Res,
        _$GetStadiumRequestsResponseImpl>
    implements _$$GetStadiumRequestsResponseImplCopyWith<$Res> {
  __$$GetStadiumRequestsResponseImplCopyWithImpl(
      _$GetStadiumRequestsResponseImpl _value,
      $Res Function(_$GetStadiumRequestsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetStadiumRequestsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$GetStadiumRequestsResponseImpl(
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
              as RequestsDataContainer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStadiumRequestsResponseImpl
    with DiagnosticableTreeMixin
    implements _GetStadiumRequestsResponse {
  const _$GetStadiumRequestsResponseImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required this.data});

  factory _$GetStadiumRequestsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetStadiumRequestsResponseImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  @override
  final RequestsDataContainer data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetStadiumRequestsResponse(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetStadiumRequestsResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStadiumRequestsResponseImpl &&
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

  /// Create a copy of GetStadiumRequestsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStadiumRequestsResponseImplCopyWith<_$GetStadiumRequestsResponseImpl>
      get copyWith => __$$GetStadiumRequestsResponseImplCopyWithImpl<
          _$GetStadiumRequestsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStadiumRequestsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetStadiumRequestsResponse
    implements GetStadiumRequestsResponse {
  const factory _GetStadiumRequestsResponse(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final RequestsDataContainer data}) =
      _$GetStadiumRequestsResponseImpl;

  factory _GetStadiumRequestsResponse.fromJson(Map<String, dynamic> json) =
      _$GetStadiumRequestsResponseImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  RequestsDataContainer get data;

  /// Create a copy of GetStadiumRequestsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStadiumRequestsResponseImplCopyWith<_$GetStadiumRequestsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestsDataContainer _$RequestsDataContainerFromJson(
    Map<String, dynamic> json) {
  return _RequestsDataContainer.fromJson(json);
}

/// @nodoc
mixin _$RequestsDataContainer {
  @JsonKey(name: 'Asks')
  List<GetStadiumRequestsDataResponse> get asks =>
      throw _privateConstructorUsedError;

  /// Serializes this RequestsDataContainer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestsDataContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestsDataContainerCopyWith<RequestsDataContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestsDataContainerCopyWith<$Res> {
  factory $RequestsDataContainerCopyWith(RequestsDataContainer value,
          $Res Function(RequestsDataContainer) then) =
      _$RequestsDataContainerCopyWithImpl<$Res, RequestsDataContainer>;
  @useResult
  $Res call({@JsonKey(name: 'Asks') List<GetStadiumRequestsDataResponse> asks});
}

/// @nodoc
class _$RequestsDataContainerCopyWithImpl<$Res,
        $Val extends RequestsDataContainer>
    implements $RequestsDataContainerCopyWith<$Res> {
  _$RequestsDataContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestsDataContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asks = null,
  }) {
    return _then(_value.copyWith(
      asks: null == asks
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<GetStadiumRequestsDataResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestsDataContainerImplCopyWith<$Res>
    implements $RequestsDataContainerCopyWith<$Res> {
  factory _$$RequestsDataContainerImplCopyWith(
          _$RequestsDataContainerImpl value,
          $Res Function(_$RequestsDataContainerImpl) then) =
      __$$RequestsDataContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Asks') List<GetStadiumRequestsDataResponse> asks});
}

/// @nodoc
class __$$RequestsDataContainerImplCopyWithImpl<$Res>
    extends _$RequestsDataContainerCopyWithImpl<$Res,
        _$RequestsDataContainerImpl>
    implements _$$RequestsDataContainerImplCopyWith<$Res> {
  __$$RequestsDataContainerImplCopyWithImpl(_$RequestsDataContainerImpl _value,
      $Res Function(_$RequestsDataContainerImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsDataContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asks = null,
  }) {
    return _then(_$RequestsDataContainerImpl(
      asks: null == asks
          ? _value._asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<GetStadiumRequestsDataResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestsDataContainerImpl
    with DiagnosticableTreeMixin
    implements _RequestsDataContainer {
  const _$RequestsDataContainerImpl(
      {@JsonKey(name: 'Asks')
      required final List<GetStadiumRequestsDataResponse> asks})
      : _asks = asks;

  factory _$RequestsDataContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestsDataContainerImplFromJson(json);

  final List<GetStadiumRequestsDataResponse> _asks;
  @override
  @JsonKey(name: 'Asks')
  List<GetStadiumRequestsDataResponse> get asks {
    if (_asks is EqualUnmodifiableListView) return _asks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_asks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestsDataContainer(asks: $asks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestsDataContainer'))
      ..add(DiagnosticsProperty('asks', asks));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsDataContainerImpl &&
            const DeepCollectionEquality().equals(other._asks, _asks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_asks));

  /// Create a copy of RequestsDataContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsDataContainerImplCopyWith<_$RequestsDataContainerImpl>
      get copyWith => __$$RequestsDataContainerImplCopyWithImpl<
          _$RequestsDataContainerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestsDataContainerImplToJson(
      this,
    );
  }
}

abstract class _RequestsDataContainer implements RequestsDataContainer {
  const factory _RequestsDataContainer(
          {@JsonKey(name: 'Asks')
          required final List<GetStadiumRequestsDataResponse> asks}) =
      _$RequestsDataContainerImpl;

  factory _RequestsDataContainer.fromJson(Map<String, dynamic> json) =
      _$RequestsDataContainerImpl.fromJson;

  @override
  @JsonKey(name: 'Asks')
  List<GetStadiumRequestsDataResponse> get asks;

  /// Create a copy of RequestsDataContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestsDataContainerImplCopyWith<_$RequestsDataContainerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
