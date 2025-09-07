// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InviteTeamModel _$InviteTeamModelFromJson(Map<String, dynamic> json) {
  return _InviteTeamModel.fromJson(json);
}

/// @nodoc
mixin _$InviteTeamModel {
  @JsonKey(name: 'team_id')
  int get teamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'league_id')
  int get leagueId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_team')
  bool get isTeam => throw _privateConstructorUsedError;

  /// Serializes this InviteTeamModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InviteTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InviteTeamModelCopyWith<InviteTeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteTeamModelCopyWith<$Res> {
  factory $InviteTeamModelCopyWith(
          InviteTeamModel value, $Res Function(InviteTeamModel) then) =
      _$InviteTeamModelCopyWithImpl<$Res, InviteTeamModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'team_id') int teamId,
      @JsonKey(name: 'league_id') int leagueId,
      @JsonKey(name: 'is_team') bool isTeam});
}

/// @nodoc
class _$InviteTeamModelCopyWithImpl<$Res, $Val extends InviteTeamModel>
    implements $InviteTeamModelCopyWith<$Res> {
  _$InviteTeamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InviteTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? leagueId = null,
    Object? isTeam = null,
  }) {
    return _then(_value.copyWith(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      leagueId: null == leagueId
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as int,
      isTeam: null == isTeam
          ? _value.isTeam
          : isTeam // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InviteTeamModelImplCopyWith<$Res>
    implements $InviteTeamModelCopyWith<$Res> {
  factory _$$InviteTeamModelImplCopyWith(_$InviteTeamModelImpl value,
          $Res Function(_$InviteTeamModelImpl) then) =
      __$$InviteTeamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'team_id') int teamId,
      @JsonKey(name: 'league_id') int leagueId,
      @JsonKey(name: 'is_team') bool isTeam});
}

/// @nodoc
class __$$InviteTeamModelImplCopyWithImpl<$Res>
    extends _$InviteTeamModelCopyWithImpl<$Res, _$InviteTeamModelImpl>
    implements _$$InviteTeamModelImplCopyWith<$Res> {
  __$$InviteTeamModelImplCopyWithImpl(
      _$InviteTeamModelImpl _value, $Res Function(_$InviteTeamModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InviteTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? leagueId = null,
    Object? isTeam = null,
  }) {
    return _then(_$InviteTeamModelImpl(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      leagueId: null == leagueId
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as int,
      isTeam: null == isTeam
          ? _value.isTeam
          : isTeam // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InviteTeamModelImpl
    with DiagnosticableTreeMixin
    implements _InviteTeamModel {
  const _$InviteTeamModelImpl(
      {@JsonKey(name: 'team_id') required this.teamId,
      @JsonKey(name: 'league_id') required this.leagueId,
      @JsonKey(name: 'is_team') required this.isTeam});

  factory _$InviteTeamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InviteTeamModelImplFromJson(json);

  @override
  @JsonKey(name: 'team_id')
  final int teamId;
  @override
  @JsonKey(name: 'league_id')
  final int leagueId;
  @override
  @JsonKey(name: 'is_team')
  final bool isTeam;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InviteTeamModel(teamId: $teamId, leagueId: $leagueId, isTeam: $isTeam)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InviteTeamModel'))
      ..add(DiagnosticsProperty('teamId', teamId))
      ..add(DiagnosticsProperty('leagueId', leagueId))
      ..add(DiagnosticsProperty('isTeam', isTeam));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteTeamModelImpl &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.leagueId, leagueId) ||
                other.leagueId == leagueId) &&
            (identical(other.isTeam, isTeam) || other.isTeam == isTeam));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, teamId, leagueId, isTeam);

  /// Create a copy of InviteTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteTeamModelImplCopyWith<_$InviteTeamModelImpl> get copyWith =>
      __$$InviteTeamModelImplCopyWithImpl<_$InviteTeamModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InviteTeamModelImplToJson(
      this,
    );
  }
}

abstract class _InviteTeamModel implements InviteTeamModel {
  const factory _InviteTeamModel(
          {@JsonKey(name: 'team_id') required final int teamId,
          @JsonKey(name: 'league_id') required final int leagueId,
          @JsonKey(name: 'is_team') required final bool isTeam}) =
      _$InviteTeamModelImpl;

  factory _InviteTeamModel.fromJson(Map<String, dynamic> json) =
      _$InviteTeamModelImpl.fromJson;

  @override
  @JsonKey(name: 'team_id')
  int get teamId;
  @override
  @JsonKey(name: 'league_id')
  int get leagueId;
  @override
  @JsonKey(name: 'is_team')
  bool get isTeam;

  /// Create a copy of InviteTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InviteTeamModelImplCopyWith<_$InviteTeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
