// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamDetailsModel _$TeamDetailsModelFromJson(Map<String, dynamic> json) {
  return _TeamDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$TeamDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo')
  String? get logoPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String? get logoUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get captain => throw _privateConstructorUsedError;
  Map<String, dynamic>? get sport => throw _privateConstructorUsedError;
  List<dynamic> get profiles => throw _privateConstructorUsedError;

  /// Serializes this TeamDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamDetailsModelCopyWith<TeamDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamDetailsModelCopyWith<$Res> {
  factory $TeamDetailsModelCopyWith(
          TeamDetailsModel value, $Res Function(TeamDetailsModel) then) =
      _$TeamDetailsModelCopyWithImpl<$Res, TeamDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'logo') String? logoPath,
      @JsonKey(name: 'logo_url') String? logoUrl,
      Map<String, dynamic>? captain,
      Map<String, dynamic>? sport,
      List<dynamic> profiles});
}

/// @nodoc
class _$TeamDetailsModelCopyWithImpl<$Res, $Val extends TeamDetailsModel>
    implements $TeamDetailsModelCopyWith<$Res> {
  _$TeamDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoPath = freezed,
    Object? logoUrl = freezed,
    Object? captain = freezed,
    Object? sport = freezed,
    Object? profiles = null,
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
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      captain: freezed == captain
          ? _value.captain
          : captain // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sport: freezed == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      profiles: null == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamDetailsModelImplCopyWith<$Res>
    implements $TeamDetailsModelCopyWith<$Res> {
  factory _$$TeamDetailsModelImplCopyWith(_$TeamDetailsModelImpl value,
          $Res Function(_$TeamDetailsModelImpl) then) =
      __$$TeamDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'logo') String? logoPath,
      @JsonKey(name: 'logo_url') String? logoUrl,
      Map<String, dynamic>? captain,
      Map<String, dynamic>? sport,
      List<dynamic> profiles});
}

/// @nodoc
class __$$TeamDetailsModelImplCopyWithImpl<$Res>
    extends _$TeamDetailsModelCopyWithImpl<$Res, _$TeamDetailsModelImpl>
    implements _$$TeamDetailsModelImplCopyWith<$Res> {
  __$$TeamDetailsModelImplCopyWithImpl(_$TeamDetailsModelImpl _value,
      $Res Function(_$TeamDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoPath = freezed,
    Object? logoUrl = freezed,
    Object? captain = freezed,
    Object? sport = freezed,
    Object? profiles = null,
  }) {
    return _then(_$TeamDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      captain: freezed == captain
          ? _value._captain
          : captain // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sport: freezed == sport
          ? _value._sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      profiles: null == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamDetailsModelImpl implements _TeamDetailsModel {
  const _$TeamDetailsModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'logo') this.logoPath,
      @JsonKey(name: 'logo_url') this.logoUrl,
      final Map<String, dynamic>? captain,
      final Map<String, dynamic>? sport,
      final List<dynamic> profiles = const <dynamic>[]})
      : _captain = captain,
        _sport = sport,
        _profiles = profiles;

  factory _$TeamDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamDetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'logo')
  final String? logoPath;
  @override
  @JsonKey(name: 'logo_url')
  final String? logoUrl;
  final Map<String, dynamic>? _captain;
  @override
  Map<String, dynamic>? get captain {
    final value = _captain;
    if (value == null) return null;
    if (_captain is EqualUnmodifiableMapView) return _captain;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _sport;
  @override
  Map<String, dynamic>? get sport {
    final value = _sport;
    if (value == null) return null;
    if (_sport is EqualUnmodifiableMapView) return _sport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<dynamic> _profiles;
  @override
  @JsonKey()
  List<dynamic> get profiles {
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  @override
  String toString() {
    return 'TeamDetailsModel(id: $id, name: $name, logoPath: $logoPath, logoUrl: $logoUrl, captain: $captain, sport: $sport, profiles: $profiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            const DeepCollectionEquality().equals(other._captain, _captain) &&
            const DeepCollectionEquality().equals(other._sport, _sport) &&
            const DeepCollectionEquality().equals(other._profiles, _profiles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      logoPath,
      logoUrl,
      const DeepCollectionEquality().hash(_captain),
      const DeepCollectionEquality().hash(_sport),
      const DeepCollectionEquality().hash(_profiles));

  /// Create a copy of TeamDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamDetailsModelImplCopyWith<_$TeamDetailsModelImpl> get copyWith =>
      __$$TeamDetailsModelImplCopyWithImpl<_$TeamDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _TeamDetailsModel implements TeamDetailsModel {
  const factory _TeamDetailsModel(
      {required final int id,
      required final String name,
      @JsonKey(name: 'logo') final String? logoPath,
      @JsonKey(name: 'logo_url') final String? logoUrl,
      final Map<String, dynamic>? captain,
      final Map<String, dynamic>? sport,
      final List<dynamic> profiles}) = _$TeamDetailsModelImpl;

  factory _TeamDetailsModel.fromJson(Map<String, dynamic> json) =
      _$TeamDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'logo')
  String? get logoPath;
  @override
  @JsonKey(name: 'logo_url')
  String? get logoUrl;
  @override
  Map<String, dynamic>? get captain;
  @override
  Map<String, dynamic>? get sport;
  @override
  List<dynamic> get profiles;

  /// Create a copy of TeamDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamDetailsModelImplCopyWith<_$TeamDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
