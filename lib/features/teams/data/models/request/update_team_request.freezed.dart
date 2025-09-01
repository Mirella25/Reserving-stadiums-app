// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_team_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTeamRequest _$UpdateTeamRequestFromJson(Map<String, dynamic> json) {
  return _UpdateTeamRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateTeamRequest {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'sport_id')
  int? get sportId => throw _privateConstructorUsedError;
  @JsonKey(name: 'captin_id')
  int? get captainId => throw _privateConstructorUsedError; // ⬅️ جديد
  String? get logo => throw _privateConstructorUsedError;

  /// Serializes this UpdateTeamRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTeamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTeamRequestCopyWith<UpdateTeamRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTeamRequestCopyWith<$Res> {
  factory $UpdateTeamRequestCopyWith(
          UpdateTeamRequest value, $Res Function(UpdateTeamRequest) then) =
      _$UpdateTeamRequestCopyWithImpl<$Res, UpdateTeamRequest>;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'sport_id') int? sportId,
      @JsonKey(name: 'captin_id') int? captainId,
      String? logo});
}

/// @nodoc
class _$UpdateTeamRequestCopyWithImpl<$Res, $Val extends UpdateTeamRequest>
    implements $UpdateTeamRequestCopyWith<$Res> {
  _$UpdateTeamRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTeamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? sportId = freezed,
    Object? captainId = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sportId: freezed == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int?,
      captainId: freezed == captainId
          ? _value.captainId
          : captainId // ignore: cast_nullable_to_non_nullable
              as int?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTeamRequestImplCopyWith<$Res>
    implements $UpdateTeamRequestCopyWith<$Res> {
  factory _$$UpdateTeamRequestImplCopyWith(_$UpdateTeamRequestImpl value,
          $Res Function(_$UpdateTeamRequestImpl) then) =
      __$$UpdateTeamRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'sport_id') int? sportId,
      @JsonKey(name: 'captin_id') int? captainId,
      String? logo});
}

/// @nodoc
class __$$UpdateTeamRequestImplCopyWithImpl<$Res>
    extends _$UpdateTeamRequestCopyWithImpl<$Res, _$UpdateTeamRequestImpl>
    implements _$$UpdateTeamRequestImplCopyWith<$Res> {
  __$$UpdateTeamRequestImplCopyWithImpl(_$UpdateTeamRequestImpl _value,
      $Res Function(_$UpdateTeamRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTeamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? sportId = freezed,
    Object? captainId = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$UpdateTeamRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sportId: freezed == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int?,
      captainId: freezed == captainId
          ? _value.captainId
          : captainId // ignore: cast_nullable_to_non_nullable
              as int?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTeamRequestImpl implements _UpdateTeamRequest {
  const _$UpdateTeamRequestImpl(
      {this.name,
      @JsonKey(name: 'sport_id') this.sportId,
      @JsonKey(name: 'captin_id') this.captainId,
      this.logo});

  factory _$UpdateTeamRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTeamRequestImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'sport_id')
  final int? sportId;
  @override
  @JsonKey(name: 'captin_id')
  final int? captainId;
// ⬅️ جديد
  @override
  final String? logo;

  @override
  String toString() {
    return 'UpdateTeamRequest(name: $name, sportId: $sportId, captainId: $captainId, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTeamRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sportId, sportId) || other.sportId == sportId) &&
            (identical(other.captainId, captainId) ||
                other.captainId == captainId) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, sportId, captainId, logo);

  /// Create a copy of UpdateTeamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTeamRequestImplCopyWith<_$UpdateTeamRequestImpl> get copyWith =>
      __$$UpdateTeamRequestImplCopyWithImpl<_$UpdateTeamRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTeamRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateTeamRequest implements UpdateTeamRequest {
  const factory _UpdateTeamRequest(
      {final String? name,
      @JsonKey(name: 'sport_id') final int? sportId,
      @JsonKey(name: 'captin_id') final int? captainId,
      final String? logo}) = _$UpdateTeamRequestImpl;

  factory _UpdateTeamRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateTeamRequestImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'sport_id')
  int? get sportId;
  @override
  @JsonKey(name: 'captin_id')
  int? get captainId; // ⬅️ جديد
  @override
  String? get logo;

  /// Create a copy of UpdateTeamRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTeamRequestImplCopyWith<_$UpdateTeamRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
