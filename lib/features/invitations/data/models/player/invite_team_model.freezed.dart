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
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_id')
  int get teamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver_id')
  int get receiverId =>
      throw _privateConstructorUsedError; // السيرفر يرجعها true/1/0 أحياناً
  @JsonKey(name: 'is_team')
  dynamic get isTeam =>
      throw _privateConstructorUsedError; // السيرفر ما رجع status → خلي default "pending"
  @JsonKey(name: 'status')
  String get status =>
      throw _privateConstructorUsedError; // السيرفر ما رجّع sent_at → خليه nullable وخد created/updated كـ fallback
  @JsonKey(name: 'sent_at')
  String? get sentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

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
      {int id,
      @JsonKey(name: 'team_id') int teamId,
      @JsonKey(name: 'receiver_id') int receiverId,
      @JsonKey(name: 'is_team') dynamic isTeam,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'sent_at') String? sentAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
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
    Object? id = null,
    Object? teamId = null,
    Object? receiverId = null,
    Object? isTeam = freezed,
    Object? status = null,
    Object? sentAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int,
      isTeam: freezed == isTeam
          ? _value.isTeam
          : isTeam // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$InviteTeamModelImplCopyWith<$Res>
    implements $InviteTeamModelCopyWith<$Res> {
  factory _$$InviteTeamModelImplCopyWith(_$InviteTeamModelImpl value,
          $Res Function(_$InviteTeamModelImpl) then) =
      __$$InviteTeamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'team_id') int teamId,
      @JsonKey(name: 'receiver_id') int receiverId,
      @JsonKey(name: 'is_team') dynamic isTeam,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'sent_at') String? sentAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
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
    Object? id = null,
    Object? teamId = null,
    Object? receiverId = null,
    Object? isTeam = freezed,
    Object? status = null,
    Object? sentAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$InviteTeamModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int,
      isTeam: freezed == isTeam
          ? _value.isTeam
          : isTeam // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
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
class _$InviteTeamModelImpl implements _InviteTeamModel {
  const _$InviteTeamModelImpl(
      {required this.id,
      @JsonKey(name: 'team_id') required this.teamId,
      @JsonKey(name: 'receiver_id') required this.receiverId,
      @JsonKey(name: 'is_team') required this.isTeam,
      @JsonKey(name: 'status') this.status = 'pending',
      @JsonKey(name: 'sent_at') this.sentAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$InviteTeamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InviteTeamModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'team_id')
  final int teamId;
  @override
  @JsonKey(name: 'receiver_id')
  final int receiverId;
// السيرفر يرجعها true/1/0 أحياناً
  @override
  @JsonKey(name: 'is_team')
  final dynamic isTeam;
// السيرفر ما رجع status → خلي default "pending"
  @override
  @JsonKey(name: 'status')
  final String status;
// السيرفر ما رجّع sent_at → خليه nullable وخد created/updated كـ fallback
  @override
  @JsonKey(name: 'sent_at')
  final String? sentAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'InviteTeamModel(id: $id, teamId: $teamId, receiverId: $receiverId, isTeam: $isTeam, status: $status, sentAt: $sentAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteTeamModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            const DeepCollectionEquality().equals(other.isTeam, isTeam) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      teamId,
      receiverId,
      const DeepCollectionEquality().hash(isTeam),
      status,
      sentAt,
      createdAt,
      updatedAt);

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
          {required final int id,
          @JsonKey(name: 'team_id') required final int teamId,
          @JsonKey(name: 'receiver_id') required final int receiverId,
          @JsonKey(name: 'is_team') required final dynamic isTeam,
          @JsonKey(name: 'status') final String status,
          @JsonKey(name: 'sent_at') final String? sentAt,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$InviteTeamModelImpl;

  factory _InviteTeamModel.fromJson(Map<String, dynamic> json) =
      _$InviteTeamModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'team_id')
  int get teamId;
  @override
  @JsonKey(name: 'receiver_id')
  int get receiverId; // السيرفر يرجعها true/1/0 أحياناً
  @override
  @JsonKey(name: 'is_team')
  dynamic get isTeam; // السيرفر ما رجع status → خلي default "pending"
  @override
  @JsonKey(name: 'status')
  String
      get status; // السيرفر ما رجّع sent_at → خليه nullable وخد created/updated كـ fallback
  @override
  @JsonKey(name: 'sent_at')
  String? get sentAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of InviteTeamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InviteTeamModelImplCopyWith<_$InviteTeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
