// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_captain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamCaptainModel _$TeamCaptainModelFromJson(Map<String, dynamic> json) {
  return _TeamCaptainModel.fromJson(json);
}

/// @nodoc
mixin _$TeamCaptainModel {
  @JsonKey(fromJson: _toInt)
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this TeamCaptainModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamCaptainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamCaptainModelCopyWith<TeamCaptainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCaptainModelCopyWith<$Res> {
  factory $TeamCaptainModelCopyWith(
          TeamCaptainModel value, $Res Function(TeamCaptainModel) then) =
      _$TeamCaptainModelCopyWithImpl<$Res, TeamCaptainModel>;
  @useResult
  $Res call({@JsonKey(fromJson: _toInt) int id, String email, String? type});
}

/// @nodoc
class _$TeamCaptainModelCopyWithImpl<$Res, $Val extends TeamCaptainModel>
    implements $TeamCaptainModelCopyWith<$Res> {
  _$TeamCaptainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamCaptainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamCaptainModelImplCopyWith<$Res>
    implements $TeamCaptainModelCopyWith<$Res> {
  factory _$$TeamCaptainModelImplCopyWith(_$TeamCaptainModelImpl value,
          $Res Function(_$TeamCaptainModelImpl) then) =
      __$$TeamCaptainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(fromJson: _toInt) int id, String email, String? type});
}

/// @nodoc
class __$$TeamCaptainModelImplCopyWithImpl<$Res>
    extends _$TeamCaptainModelCopyWithImpl<$Res, _$TeamCaptainModelImpl>
    implements _$$TeamCaptainModelImplCopyWith<$Res> {
  __$$TeamCaptainModelImplCopyWithImpl(_$TeamCaptainModelImpl _value,
      $Res Function(_$TeamCaptainModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamCaptainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? type = freezed,
  }) {
    return _then(_$TeamCaptainModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamCaptainModelImpl implements _TeamCaptainModel {
  const _$TeamCaptainModelImpl(
      {@JsonKey(fromJson: _toInt) required this.id,
      required this.email,
      this.type});

  factory _$TeamCaptainModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamCaptainModelImplFromJson(json);

  @override
  @JsonKey(fromJson: _toInt)
  final int id;
  @override
  final String email;
  @override
  final String? type;

  @override
  String toString() {
    return 'TeamCaptainModel(id: $id, email: $email, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamCaptainModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, type);

  /// Create a copy of TeamCaptainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamCaptainModelImplCopyWith<_$TeamCaptainModelImpl> get copyWith =>
      __$$TeamCaptainModelImplCopyWithImpl<_$TeamCaptainModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamCaptainModelImplToJson(
      this,
    );
  }
}

abstract class _TeamCaptainModel implements TeamCaptainModel {
  const factory _TeamCaptainModel(
      {@JsonKey(fromJson: _toInt) required final int id,
      required final String email,
      final String? type}) = _$TeamCaptainModelImpl;

  factory _TeamCaptainModel.fromJson(Map<String, dynamic> json) =
      _$TeamCaptainModelImpl.fromJson;

  @override
  @JsonKey(fromJson: _toInt)
  int get id;
  @override
  String get email;
  @override
  String? get type;

  /// Create a copy of TeamCaptainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamCaptainModelImplCopyWith<_$TeamCaptainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
