// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamModel _$TeamModelFromJson(Map<String, dynamic> json) {
  return _TeamModel.fromJson(json);
}

/// @nodoc
mixin _$TeamModel {
  @JsonKey(fromJson: _toInt)
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'captin_id', fromJson: _toInt)
  int get captainId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sport_id', fromJson: _toInt)
  int get sportId => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String? get logoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError; // ✅ nested
  TeamCaptainModel? get captain => throw _privateConstructorUsedError;
  SportModel? get sport => throw _privateConstructorUsedError;

  /// Serializes this TeamModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamModelCopyWith<TeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamModelCopyWith<$Res> {
  factory $TeamModelCopyWith(TeamModel value, $Res Function(TeamModel) then) =
      _$TeamModelCopyWithImpl<$Res, TeamModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _toInt) int id,
      String name,
      @JsonKey(name: 'captin_id', fromJson: _toInt) int captainId,
      @JsonKey(name: 'sport_id', fromJson: _toInt) int sportId,
      String? logo,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      TeamCaptainModel? captain,
      SportModel? sport});

  $TeamCaptainModelCopyWith<$Res>? get captain;
  $SportModelCopyWith<$Res>? get sport;
}

/// @nodoc
class _$TeamModelCopyWithImpl<$Res, $Val extends TeamModel>
    implements $TeamModelCopyWith<$Res> {
  _$TeamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? captainId = null,
    Object? sportId = null,
    Object? logo = freezed,
    Object? logoUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? captain = freezed,
    Object? sport = freezed,
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
      captainId: null == captainId
          ? _value.captainId
          : captainId // ignore: cast_nullable_to_non_nullable
              as int,
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int,
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
      captain: freezed == captain
          ? _value.captain
          : captain // ignore: cast_nullable_to_non_nullable
              as TeamCaptainModel?,
      sport: freezed == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as SportModel?,
    ) as $Val);
  }

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamCaptainModelCopyWith<$Res>? get captain {
    if (_value.captain == null) {
      return null;
    }

    return $TeamCaptainModelCopyWith<$Res>(_value.captain!, (value) {
      return _then(_value.copyWith(captain: value) as $Val);
    });
  }

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SportModelCopyWith<$Res>? get sport {
    if (_value.sport == null) {
      return null;
    }

    return $SportModelCopyWith<$Res>(_value.sport!, (value) {
      return _then(_value.copyWith(sport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamModelImplCopyWith<$Res>
    implements $TeamModelCopyWith<$Res> {
  factory _$$TeamModelImplCopyWith(
          _$TeamModelImpl value, $Res Function(_$TeamModelImpl) then) =
      __$$TeamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _toInt) int id,
      String name,
      @JsonKey(name: 'captin_id', fromJson: _toInt) int captainId,
      @JsonKey(name: 'sport_id', fromJson: _toInt) int sportId,
      String? logo,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      TeamCaptainModel? captain,
      SportModel? sport});

  @override
  $TeamCaptainModelCopyWith<$Res>? get captain;
  @override
  $SportModelCopyWith<$Res>? get sport;
}

/// @nodoc
class __$$TeamModelImplCopyWithImpl<$Res>
    extends _$TeamModelCopyWithImpl<$Res, _$TeamModelImpl>
    implements _$$TeamModelImplCopyWith<$Res> {
  __$$TeamModelImplCopyWithImpl(
      _$TeamModelImpl _value, $Res Function(_$TeamModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? captainId = null,
    Object? sportId = null,
    Object? logo = freezed,
    Object? logoUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? captain = freezed,
    Object? sport = freezed,
  }) {
    return _then(_$TeamModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      captain: freezed == captain
          ? _value.captain
          : captain // ignore: cast_nullable_to_non_nullable
              as TeamCaptainModel?,
      sport: freezed == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as SportModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamModelImpl implements _TeamModel {
  const _$TeamModelImpl(
      {@JsonKey(fromJson: _toInt) required this.id,
      required this.name,
      @JsonKey(name: 'captin_id', fromJson: _toInt) required this.captainId,
      @JsonKey(name: 'sport_id', fromJson: _toInt) required this.sportId,
      this.logo,
      @JsonKey(name: 'logo_url') this.logoUrl,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.captain,
      this.sport});

  factory _$TeamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamModelImplFromJson(json);

  @override
  @JsonKey(fromJson: _toInt)
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'captin_id', fromJson: _toInt)
  final int captainId;
  @override
  @JsonKey(name: 'sport_id', fromJson: _toInt)
  final int sportId;
  @override
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
// ✅ nested
  @override
  final TeamCaptainModel? captain;
  @override
  final SportModel? sport;

  @override
  String toString() {
    return 'TeamModel(id: $id, name: $name, captainId: $captainId, sportId: $sportId, logo: $logo, logoUrl: $logoUrl, createdAt: $createdAt, updatedAt: $updatedAt, captain: $captain, sport: $sport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamModelImpl &&
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
                other.updatedAt == updatedAt) &&
            (identical(other.captain, captain) || other.captain == captain) &&
            (identical(other.sport, sport) || other.sport == sport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, captainId, sportId,
      logo, logoUrl, createdAt, updatedAt, captain, sport);

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamModelImplCopyWith<_$TeamModelImpl> get copyWith =>
      __$$TeamModelImplCopyWithImpl<_$TeamModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamModelImplToJson(
      this,
    );
  }
}

abstract class _TeamModel implements TeamModel {
  const factory _TeamModel(
      {@JsonKey(fromJson: _toInt) required final int id,
      required final String name,
      @JsonKey(name: 'captin_id', fromJson: _toInt)
      required final int captainId,
      @JsonKey(name: 'sport_id', fromJson: _toInt) required final int sportId,
      final String? logo,
      @JsonKey(name: 'logo_url') final String? logoUrl,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      final TeamCaptainModel? captain,
      final SportModel? sport}) = _$TeamModelImpl;

  factory _TeamModel.fromJson(Map<String, dynamic> json) =
      _$TeamModelImpl.fromJson;

  @override
  @JsonKey(fromJson: _toInt)
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'captin_id', fromJson: _toInt)
  int get captainId;
  @override
  @JsonKey(name: 'sport_id', fromJson: _toInt)
  int get sportId;
  @override
  String? get logo;
  @override
  @JsonKey(name: 'logo_url')
  String? get logoUrl;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt; // ✅ nested
  @override
  TeamCaptainModel? get captain;
  @override
  SportModel? get sport;

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamModelImplCopyWith<_$TeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
