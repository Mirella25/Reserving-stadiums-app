// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_team_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTeamRequest _$CreateTeamRequestFromJson(Map<String, dynamic> json) {
  return _CreateTeamRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateTeamRequest {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'captin_id')
  int get captainId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sport_id')
  int get sportId => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String? get logoPath => throw _privateConstructorUsedError;

  /// Serializes this CreateTeamRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTeamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTeamRequestCopyWith<CreateTeamRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTeamRequestCopyWith<$Res> {
  factory $CreateTeamRequestCopyWith(
          CreateTeamRequest value, $Res Function(CreateTeamRequest) then) =
      _$CreateTeamRequestCopyWithImpl<$Res, CreateTeamRequest>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'captin_id') int captainId,
      @JsonKey(name: 'sport_id') int sportId,
      @JsonKey(includeToJson: false) String? logoPath});
}

/// @nodoc
class _$CreateTeamRequestCopyWithImpl<$Res, $Val extends CreateTeamRequest>
    implements $CreateTeamRequestCopyWith<$Res> {
  _$CreateTeamRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTeamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? captainId = null,
    Object? sportId = null,
    Object? logoPath = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      captainId: null == captainId
          ? _value.captainId
          : captainId // ignore: cast_nullable_to_non_nullable
              as int,
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTeamRequestImplCopyWith<$Res>
    implements $CreateTeamRequestCopyWith<$Res> {
  factory _$$CreateTeamRequestImplCopyWith(_$CreateTeamRequestImpl value,
          $Res Function(_$CreateTeamRequestImpl) then) =
      __$$CreateTeamRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'captin_id') int captainId,
      @JsonKey(name: 'sport_id') int sportId,
      @JsonKey(includeToJson: false) String? logoPath});
}

/// @nodoc
class __$$CreateTeamRequestImplCopyWithImpl<$Res>
    extends _$CreateTeamRequestCopyWithImpl<$Res, _$CreateTeamRequestImpl>
    implements _$$CreateTeamRequestImplCopyWith<$Res> {
  __$$CreateTeamRequestImplCopyWithImpl(_$CreateTeamRequestImpl _value,
      $Res Function(_$CreateTeamRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTeamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? captainId = null,
    Object? sportId = null,
    Object? logoPath = freezed,
  }) {
    return _then(_$CreateTeamRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      captainId: null == captainId
          ? _value.captainId
          : captainId // ignore: cast_nullable_to_non_nullable
              as int,
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTeamRequestImpl implements _CreateTeamRequest {
  const _$CreateTeamRequestImpl(
      {required this.name,
      @JsonKey(name: 'captin_id') required this.captainId,
      @JsonKey(name: 'sport_id') required this.sportId,
      @JsonKey(includeToJson: false) this.logoPath});

  factory _$CreateTeamRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTeamRequestImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'captin_id')
  final int captainId;
  @override
  @JsonKey(name: 'sport_id')
  final int sportId;
  @override
  @JsonKey(includeToJson: false)
  final String? logoPath;

  @override
  String toString() {
    return 'CreateTeamRequest(name: $name, captainId: $captainId, sportId: $sportId, logoPath: $logoPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTeamRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.captainId, captainId) ||
                other.captainId == captainId) &&
            (identical(other.sportId, sportId) || other.sportId == sportId) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, captainId, sportId, logoPath);

  /// Create a copy of CreateTeamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTeamRequestImplCopyWith<_$CreateTeamRequestImpl> get copyWith =>
      __$$CreateTeamRequestImplCopyWithImpl<_$CreateTeamRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTeamRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateTeamRequest implements CreateTeamRequest {
  const factory _CreateTeamRequest(
          {required final String name,
          @JsonKey(name: 'captin_id') required final int captainId,
          @JsonKey(name: 'sport_id') required final int sportId,
          @JsonKey(includeToJson: false) final String? logoPath}) =
      _$CreateTeamRequestImpl;

  factory _CreateTeamRequest.fromJson(Map<String, dynamic> json) =
      _$CreateTeamRequestImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'captin_id')
  int get captainId;
  @override
  @JsonKey(name: 'sport_id')
  int get sportId;
  @override
  @JsonKey(includeToJson: false)
  String? get logoPath;

  /// Create a copy of CreateTeamRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTeamRequestImplCopyWith<_$CreateTeamRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
