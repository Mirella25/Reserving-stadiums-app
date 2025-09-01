// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_invitation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeagueInvitationEntity {
  int? get id => throw _privateConstructorUsedError;
  int? get leagueId => throw _privateConstructorUsedError;
  int? get teamId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of LeagueInvitationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeagueInvitationEntityCopyWith<LeagueInvitationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueInvitationEntityCopyWith<$Res> {
  factory $LeagueInvitationEntityCopyWith(LeagueInvitationEntity value,
          $Res Function(LeagueInvitationEntity) then) =
      _$LeagueInvitationEntityCopyWithImpl<$Res, LeagueInvitationEntity>;
  @useResult
  $Res call(
      {int? id,
      int? leagueId,
      int? teamId,
      String? status,
      DateTime? createdAt});
}

/// @nodoc
class _$LeagueInvitationEntityCopyWithImpl<$Res,
        $Val extends LeagueInvitationEntity>
    implements $LeagueInvitationEntityCopyWith<$Res> {
  _$LeagueInvitationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeagueInvitationEntity
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
abstract class _$$LeagueInvitationEntityImplCopyWith<$Res>
    implements $LeagueInvitationEntityCopyWith<$Res> {
  factory _$$LeagueInvitationEntityImplCopyWith(
          _$LeagueInvitationEntityImpl value,
          $Res Function(_$LeagueInvitationEntityImpl) then) =
      __$$LeagueInvitationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? leagueId,
      int? teamId,
      String? status,
      DateTime? createdAt});
}

/// @nodoc
class __$$LeagueInvitationEntityImplCopyWithImpl<$Res>
    extends _$LeagueInvitationEntityCopyWithImpl<$Res,
        _$LeagueInvitationEntityImpl>
    implements _$$LeagueInvitationEntityImplCopyWith<$Res> {
  __$$LeagueInvitationEntityImplCopyWithImpl(
      _$LeagueInvitationEntityImpl _value,
      $Res Function(_$LeagueInvitationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeagueInvitationEntity
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
    return _then(_$LeagueInvitationEntityImpl(
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

class _$LeagueInvitationEntityImpl implements _LeagueInvitationEntity {
  const _$LeagueInvitationEntityImpl(
      {this.id, this.leagueId, this.teamId, this.status, this.createdAt});

  @override
  final int? id;
  @override
  final int? leagueId;
  @override
  final int? teamId;
  @override
  final String? status;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'LeagueInvitationEntity(id: $id, leagueId: $leagueId, teamId: $teamId, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueInvitationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.leagueId, leagueId) ||
                other.leagueId == leagueId) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, leagueId, teamId, status, createdAt);

  /// Create a copy of LeagueInvitationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueInvitationEntityImplCopyWith<_$LeagueInvitationEntityImpl>
      get copyWith => __$$LeagueInvitationEntityImplCopyWithImpl<
          _$LeagueInvitationEntityImpl>(this, _$identity);
}

abstract class _LeagueInvitationEntity implements LeagueInvitationEntity {
  const factory _LeagueInvitationEntity(
      {final int? id,
      final int? leagueId,
      final int? teamId,
      final String? status,
      final DateTime? createdAt}) = _$LeagueInvitationEntityImpl;

  @override
  int? get id;
  @override
  int? get leagueId;
  @override
  int? get teamId;
  @override
  String? get status;
  @override
  DateTime? get createdAt;

  /// Create a copy of LeagueInvitationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeagueInvitationEntityImplCopyWith<_$LeagueInvitationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
