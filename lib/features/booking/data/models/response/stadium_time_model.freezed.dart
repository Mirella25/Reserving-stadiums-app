// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stadium_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StadiumTimeModel _$StadiumTimeModelFromJson(Map<String, dynamic> json) {
  return _StadiumTimeModel.fromJson(json);
}

/// @nodoc
mixin _$StadiumTimeModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this StadiumTimeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StadiumTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StadiumTimeModelCopyWith<StadiumTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StadiumTimeModelCopyWith<$Res> {
  factory $StadiumTimeModelCopyWith(
          StadiumTimeModel value, $Res Function(StadiumTimeModel) then) =
      _$StadiumTimeModelCopyWithImpl<$Res, StadiumTimeModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      String status});
}

/// @nodoc
class _$StadiumTimeModelCopyWithImpl<$Res, $Val extends StadiumTimeModel>
    implements $StadiumTimeModelCopyWith<$Res> {
  _$StadiumTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StadiumTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StadiumTimeModelImplCopyWith<$Res>
    implements $StadiumTimeModelCopyWith<$Res> {
  factory _$$StadiumTimeModelImplCopyWith(_$StadiumTimeModelImpl value,
          $Res Function(_$StadiumTimeModelImpl) then) =
      __$$StadiumTimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      String status});
}

/// @nodoc
class __$$StadiumTimeModelImplCopyWithImpl<$Res>
    extends _$StadiumTimeModelCopyWithImpl<$Res, _$StadiumTimeModelImpl>
    implements _$$StadiumTimeModelImplCopyWith<$Res> {
  __$$StadiumTimeModelImplCopyWithImpl(_$StadiumTimeModelImpl _value,
      $Res Function(_$StadiumTimeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StadiumTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
  }) {
    return _then(_$StadiumTimeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StadiumTimeModelImpl implements _StadiumTimeModel {
  const _$StadiumTimeModelImpl(
      {required this.id,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      required this.status});

  factory _$StadiumTimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StadiumTimeModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  @JsonKey(name: 'end_time')
  final String endTime;
  @override
  final String status;

  @override
  String toString() {
    return 'StadiumTimeModel(id: $id, startTime: $startTime, endTime: $endTime, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StadiumTimeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startTime, endTime, status);

  /// Create a copy of StadiumTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StadiumTimeModelImplCopyWith<_$StadiumTimeModelImpl> get copyWith =>
      __$$StadiumTimeModelImplCopyWithImpl<_$StadiumTimeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StadiumTimeModelImplToJson(
      this,
    );
  }
}

abstract class _StadiumTimeModel implements StadiumTimeModel {
  const factory _StadiumTimeModel(
      {required final int id,
      @JsonKey(name: 'start_time') required final String startTime,
      @JsonKey(name: 'end_time') required final String endTime,
      required final String status}) = _$StadiumTimeModelImpl;

  factory _StadiumTimeModel.fromJson(Map<String, dynamic> json) =
      _$StadiumTimeModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  @JsonKey(name: 'end_time')
  String get endTime;
  @override
  String get status;

  /// Create a copy of StadiumTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StadiumTimeModelImplCopyWith<_$StadiumTimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
