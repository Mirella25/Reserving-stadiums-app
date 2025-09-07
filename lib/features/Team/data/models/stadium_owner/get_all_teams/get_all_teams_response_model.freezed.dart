// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_teams_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllTeamsResponseModel _$GetAllTeamsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetAllTeamsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllTeamsResponseModel {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<GetAllTeamsDataResponseModel> get data =>
      throw _privateConstructorUsedError;

  /// Serializes this GetAllTeamsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAllTeamsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllTeamsResponseModelCopyWith<GetAllTeamsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllTeamsResponseModelCopyWith<$Res> {
  factory $GetAllTeamsResponseModelCopyWith(GetAllTeamsResponseModel value,
          $Res Function(GetAllTeamsResponseModel) then) =
      _$GetAllTeamsResponseModelCopyWithImpl<$Res, GetAllTeamsResponseModel>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      List<GetAllTeamsDataResponseModel> data});
}

/// @nodoc
class _$GetAllTeamsResponseModelCopyWithImpl<$Res,
        $Val extends GetAllTeamsResponseModel>
    implements $GetAllTeamsResponseModelCopyWith<$Res> {
  _$GetAllTeamsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllTeamsResponseModel
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
              as List<GetAllTeamsDataResponseModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllTeamsResponseModelImplCopyWith<$Res>
    implements $GetAllTeamsResponseModelCopyWith<$Res> {
  factory _$$GetAllTeamsResponseModelImplCopyWith(
          _$GetAllTeamsResponseModelImpl value,
          $Res Function(_$GetAllTeamsResponseModelImpl) then) =
      __$$GetAllTeamsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'status_code') int statusCode,
      String? message,
      List<GetAllTeamsDataResponseModel> data});
}

/// @nodoc
class __$$GetAllTeamsResponseModelImplCopyWithImpl<$Res>
    extends _$GetAllTeamsResponseModelCopyWithImpl<$Res,
        _$GetAllTeamsResponseModelImpl>
    implements _$$GetAllTeamsResponseModelImplCopyWith<$Res> {
  __$$GetAllTeamsResponseModelImplCopyWithImpl(
      _$GetAllTeamsResponseModelImpl _value,
      $Res Function(_$GetAllTeamsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllTeamsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$GetAllTeamsResponseModelImpl(
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
              as List<GetAllTeamsDataResponseModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllTeamsResponseModelImpl
    with DiagnosticableTreeMixin
    implements _GetAllTeamsResponseModel {
  const _$GetAllTeamsResponseModelImpl(
      {required this.status,
      @JsonKey(name: 'status_code') required this.statusCode,
      this.message,
      required final List<GetAllTeamsDataResponseModel> data})
      : _data = data;

  factory _$GetAllTeamsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllTeamsResponseModelImplFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  final String? message;
  final List<GetAllTeamsDataResponseModel> _data;
  @override
  List<GetAllTeamsDataResponseModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetAllTeamsResponseModel(status: $status, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetAllTeamsResponseModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllTeamsResponseModelImpl &&
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

  /// Create a copy of GetAllTeamsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllTeamsResponseModelImplCopyWith<_$GetAllTeamsResponseModelImpl>
      get copyWith => __$$GetAllTeamsResponseModelImplCopyWithImpl<
          _$GetAllTeamsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllTeamsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllTeamsResponseModel implements GetAllTeamsResponseModel {
  const factory _GetAllTeamsResponseModel(
          {required final bool status,
          @JsonKey(name: 'status_code') required final int statusCode,
          final String? message,
          required final List<GetAllTeamsDataResponseModel> data}) =
      _$GetAllTeamsResponseModelImpl;

  factory _GetAllTeamsResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetAllTeamsResponseModelImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  String? get message;
  @override
  List<GetAllTeamsDataResponseModel> get data;

  /// Create a copy of GetAllTeamsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllTeamsResponseModelImplCopyWith<_$GetAllTeamsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
