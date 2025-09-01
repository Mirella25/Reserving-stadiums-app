// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_invitation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeagueInvitationModel _$LeagueInvitationModelFromJson(
    Map<String, dynamic> json) {
  return _LeagueInvitationModel.fromJson(json);
}

/// @nodoc
mixin _$LeagueInvitationModel {
  @JsonKey(fromJson: _toInt, name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toInt, name: 'league_id')
  int? get leagueId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toInt, name: 'team_id')
  int? get teamId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDate, name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this LeagueInvitationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeagueInvitationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeagueInvitationModelCopyWith<LeagueInvitationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueInvitationModelCopyWith<$Res> {
  factory $LeagueInvitationModelCopyWith(LeagueInvitationModel value,
          $Res Function(LeagueInvitationModel) then) =
      _$LeagueInvitationModelCopyWithImpl<$Res, LeagueInvitationModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _toInt, name: 'id') int? id,
      @JsonKey(fromJson: _toInt, name: 'league_id') int? leagueId,
      @JsonKey(fromJson: _toInt, name: 'team_id') int? teamId,
      String? status,
      @JsonKey(fromJson: _toDate, name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$LeagueInvitationModelCopyWithImpl<$Res,
        $Val extends LeagueInvitationModel>
    implements $LeagueInvitationModelCopyWith<$Res> {
  _$LeagueInvitationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeagueInvitationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? leagueId = freezed,
    Object? teamId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      leagueId: freezed == leagueId
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as int?,
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeagueInvitationModelImplCopyWith<$Res>
    implements $LeagueInvitationModelCopyWith<$Res> {
  factory _$$LeagueInvitationModelImplCopyWith(
          _$LeagueInvitationModelImpl value,
          $Res Function(_$LeagueInvitationModelImpl) then) =
      __$$LeagueInvitationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _toInt, name: 'id') int? id,
      @JsonKey(fromJson: _toInt, name: 'league_id') int? leagueId,
      @JsonKey(fromJson: _toInt, name: 'team_id') int? teamId,
      String? status,
      @JsonKey(fromJson: _toDate, name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$LeagueInvitationModelImplCopyWithImpl<$Res>
    extends _$LeagueInvitationModelCopyWithImpl<$Res,
        _$LeagueInvitationModelImpl>
    implements _$$LeagueInvitationModelImplCopyWith<$Res> {
  __$$LeagueInvitationModelImplCopyWithImpl(_$LeagueInvitationModelImpl _value,
      $Res Function(_$LeagueInvitationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeagueInvitationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? leagueId = freezed,
    Object? teamId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$LeagueInvitationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      leagueId: freezed == leagueId
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as int?,
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeagueInvitationModelImpl implements _LeagueInvitationModel {
  const _$LeagueInvitationModelImpl(
      {@JsonKey(fromJson: _toInt, name: 'id') this.id,
      @JsonKey(fromJson: _toInt, name: 'league_id') this.leagueId,
      @JsonKey(fromJson: _toInt, name: 'team_id') this.teamId,
      this.status,
      @JsonKey(fromJson: _toDate, name: 'created_at') this.createdAt});

  factory _$LeagueInvitationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeagueInvitationModelImplFromJson(json);

  @override
  @JsonKey(fromJson: _toInt, name: 'id')
  final int? id;
  @override
  @JsonKey(fromJson: _toInt, name: 'league_id')
  final int? leagueId;
  @override
  @JsonKey(fromJson: _toInt, name: 'team_id')
  final int? teamId;
  @override
  final String? status;
  @override
  @JsonKey(fromJson: _toDate, name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'LeagueInvitationModel(id: $id, leagueId: $leagueId, teamId: $teamId, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueInvitationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.leagueId, leagueId) ||
                other.leagueId == leagueId) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, leagueId, teamId, status, createdAt);

  /// Create a copy of LeagueInvitationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueInvitationModelImplCopyWith<_$LeagueInvitationModelImpl>
      get copyWith => __$$LeagueInvitationModelImplCopyWithImpl<
          _$LeagueInvitationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeagueInvitationModelImplToJson(
      this,
    );
  }
}

abstract class _LeagueInvitationModel implements LeagueInvitationModel {
  const factory _LeagueInvitationModel(
      {@JsonKey(fromJson: _toInt, name: 'id') final int? id,
      @JsonKey(fromJson: _toInt, name: 'league_id') final int? leagueId,
      @JsonKey(fromJson: _toInt, name: 'team_id') final int? teamId,
      final String? status,
      @JsonKey(fromJson: _toDate, name: 'created_at')
      final DateTime? createdAt}) = _$LeagueInvitationModelImpl;

  factory _LeagueInvitationModel.fromJson(Map<String, dynamic> json) =
      _$LeagueInvitationModelImpl.fromJson;

  @override
  @JsonKey(fromJson: _toInt, name: 'id')
  int? get id;
  @override
  @JsonKey(fromJson: _toInt, name: 'league_id')
  int? get leagueId;
  @override
  @JsonKey(fromJson: _toInt, name: 'team_id')
  int? get teamId;
  @override
  String? get status;
  @override
  @JsonKey(fromJson: _toDate, name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of LeagueInvitationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeagueInvitationModelImplCopyWith<_$LeagueInvitationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
