// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationSnapshot _$LocationSnapshotFromJson(Map<String, dynamic> json) {
  return _LocationSnapshot.fromJson(json);
}

/// @nodoc
mixin _$LocationSnapshot {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  double? get accuracy => throw _privateConstructorUsedError;
  DateTime? get capturedAt => throw _privateConstructorUsedError;

  /// Serializes this LocationSnapshot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationSnapshotCopyWith<LocationSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSnapshotCopyWith<$Res> {
  factory $LocationSnapshotCopyWith(
          LocationSnapshot value, $Res Function(LocationSnapshot) then) =
      _$LocationSnapshotCopyWithImpl<$Res, LocationSnapshot>;
  @useResult
  $Res call({double lat, double lng, double? accuracy, DateTime? capturedAt});
}

/// @nodoc
class _$LocationSnapshotCopyWithImpl<$Res, $Val extends LocationSnapshot>
    implements $LocationSnapshotCopyWith<$Res> {
  _$LocationSnapshotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? accuracy = freezed,
    Object? capturedAt = freezed,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      capturedAt: freezed == capturedAt
          ? _value.capturedAt
          : capturedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationSnapshotImplCopyWith<$Res>
    implements $LocationSnapshotCopyWith<$Res> {
  factory _$$LocationSnapshotImplCopyWith(_$LocationSnapshotImpl value,
          $Res Function(_$LocationSnapshotImpl) then) =
      __$$LocationSnapshotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng, double? accuracy, DateTime? capturedAt});
}

/// @nodoc
class __$$LocationSnapshotImplCopyWithImpl<$Res>
    extends _$LocationSnapshotCopyWithImpl<$Res, _$LocationSnapshotImpl>
    implements _$$LocationSnapshotImplCopyWith<$Res> {
  __$$LocationSnapshotImplCopyWithImpl(_$LocationSnapshotImpl _value,
      $Res Function(_$LocationSnapshotImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? accuracy = freezed,
    Object? capturedAt = freezed,
  }) {
    return _then(_$LocationSnapshotImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      capturedAt: freezed == capturedAt
          ? _value.capturedAt
          : capturedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationSnapshotImpl implements _LocationSnapshot {
  const _$LocationSnapshotImpl(
      {required this.lat,
      required this.lng,
      this.accuracy,
      this.capturedAt = null});

  factory _$LocationSnapshotImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationSnapshotImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;
  @override
  final double? accuracy;
  @override
  @JsonKey()
  final DateTime? capturedAt;

  @override
  String toString() {
    return 'LocationSnapshot(lat: $lat, lng: $lng, accuracy: $accuracy, capturedAt: $capturedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationSnapshotImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.capturedAt, capturedAt) ||
                other.capturedAt == capturedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, accuracy, capturedAt);

  /// Create a copy of LocationSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationSnapshotImplCopyWith<_$LocationSnapshotImpl> get copyWith =>
      __$$LocationSnapshotImplCopyWithImpl<_$LocationSnapshotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationSnapshotImplToJson(
      this,
    );
  }
}

abstract class _LocationSnapshot implements LocationSnapshot {
  const factory _LocationSnapshot(
      {required final double lat,
      required final double lng,
      final double? accuracy,
      final DateTime? capturedAt}) = _$LocationSnapshotImpl;

  factory _LocationSnapshot.fromJson(Map<String, dynamic> json) =
      _$LocationSnapshotImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  double? get accuracy;
  @override
  DateTime? get capturedAt;

  /// Create a copy of LocationSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationSnapshotImplCopyWith<_$LocationSnapshotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
