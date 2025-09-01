// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeagueTeamModel _$LeagueTeamModelFromJson(Map<String, dynamic> json) {
  return _LeagueTeamModel.fromJson(json);
}

/// @nodoc
mixin _$LeagueTeamModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'captin_id')
  int? get captainId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sport_id')
  int? get sportId => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo')
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String? get logoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this LeagueTeamModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeagueTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeagueTeamModelCopyWith<LeagueTeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueTeamModelCopyWith<$Res> {
  factory $LeagueTeamModelCopyWith(
          LeagueTeamModel value, $Res Function(LeagueTeamModel) then) =
      _$LeagueTeamModelCopyWithImpl<$Res, LeagueTeamModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'captin_id') int? captainId,
      @JsonKey(name: 'sport_id') int? sportId,
      @JsonKey(name: 'logo') String? logo,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$LeagueTeamModelCopyWithImpl<$Res, $Val extends LeagueTeamModel>
    implements $LeagueTeamModelCopyWith<$Res> {
  _$LeagueTeamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeagueTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? captainId = freezed,
    Object? sportId = freezed,
    Object? logo = freezed,
    Object? logoUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      captainId: freezed == captainId
          ? _value.captainId
          : captainId // ignore: cast_nullable_to_non_nullable
              as int?,
      sportId: freezed == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeagueTeamModelImplCopyWith<$Res>
    implements $LeagueTeamModelCopyWith<$Res> {
  factory _$$LeagueTeamModelImplCopyWith(_$LeagueTeamModelImpl value,
          $Res Function(_$LeagueTeamModelImpl) then) =
      __$$LeagueTeamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'captin_id') int? captainId,
      @JsonKey(name: 'sport_id') int? sportId,
      @JsonKey(name: 'logo') String? logo,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$LeagueTeamModelImplCopyWithImpl<$Res>
    extends _$LeagueTeamModelCopyWithImpl<$Res, _$LeagueTeamModelImpl>
    implements _$$LeagueTeamModelImplCopyWith<$Res> {
  __$$LeagueTeamModelImplCopyWithImpl(
      _$LeagueTeamModelImpl _value, $Res Function(_$LeagueTeamModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeagueTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? captainId = freezed,
    Object? sportId = freezed,
    Object? logo = freezed,
    Object? logoUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$LeagueTeamModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      captainId: freezed == captainId
          ? _value.captainId
          : captainId // ignore: cast_nullable_to_non_nullable
              as int?,
      sportId: freezed == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeagueTeamModelImpl implements _LeagueTeamModel {
  const _$LeagueTeamModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'captin_id') this.captainId,
      @JsonKey(name: 'sport_id') this.sportId,
      @JsonKey(name: 'logo') this.logo,
      @JsonKey(name: 'logo_url') this.logoUrl,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$LeagueTeamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeagueTeamModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'captin_id')
  final int? captainId;
  @override
  @JsonKey(name: 'sport_id')
  final int? sportId;
  @override
  @JsonKey(name: 'logo')
  final String? logo;
  @override
  @JsonKey(name: 'logo_url')
  final String? logoUrl;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'LeagueTeamModel(id: $id, name: $name, captainId: $captainId, sportId: $sportId, logo: $logo, logoUrl: $logoUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueTeamModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.captainId, captainId) ||
                other.captainId == captainId) &&
            (identical(other.sportId, sportId) || other.sportId == sportId) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, captainId, sportId,
      logo, logoUrl, createdAt, updatedAt);

  /// Create a copy of LeagueTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueTeamModelImplCopyWith<_$LeagueTeamModelImpl> get copyWith =>
      __$$LeagueTeamModelImplCopyWithImpl<_$LeagueTeamModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeagueTeamModelImplToJson(
      this,
    );
  }
}

abstract class _LeagueTeamModel implements LeagueTeamModel {
  const factory _LeagueTeamModel(
          {required final int id,
          required final String name,
          @JsonKey(name: 'captin_id') final int? captainId,
          @JsonKey(name: 'sport_id') final int? sportId,
          @JsonKey(name: 'logo') final String? logo,
          @JsonKey(name: 'logo_url') final String? logoUrl,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$LeagueTeamModelImpl;

  factory _LeagueTeamModel.fromJson(Map<String, dynamic> json) =
      _$LeagueTeamModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'captin_id')
  int? get captainId;
  @override
  @JsonKey(name: 'sport_id')
  int? get sportId;
  @override
  @JsonKey(name: 'logo')
  String? get logo;
  @override
  @JsonKey(name: 'logo_url')
  String? get logoUrl;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of LeagueTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeagueTeamModelImplCopyWith<_$LeagueTeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
