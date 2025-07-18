// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterDataModel _$RegisterDataModelFromJson(Map<String, dynamic> json) {
  return _RegisterDataModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterDataModel {
  String get token => throw _privateConstructorUsedError;

  /// Serializes this RegisterDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterDataModelCopyWith<RegisterDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDataModelCopyWith<$Res> {
  factory $RegisterDataModelCopyWith(
          RegisterDataModel value, $Res Function(RegisterDataModel) then) =
      _$RegisterDataModelCopyWithImpl<$Res, RegisterDataModel>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$RegisterDataModelCopyWithImpl<$Res, $Val extends RegisterDataModel>
    implements $RegisterDataModelCopyWith<$Res> {
  _$RegisterDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterDataModelImplCopyWith<$Res>
    implements $RegisterDataModelCopyWith<$Res> {
  factory _$$RegisterDataModelImplCopyWith(_$RegisterDataModelImpl value,
          $Res Function(_$RegisterDataModelImpl) then) =
      __$$RegisterDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$RegisterDataModelImplCopyWithImpl<$Res>
    extends _$RegisterDataModelCopyWithImpl<$Res, _$RegisterDataModelImpl>
    implements _$$RegisterDataModelImplCopyWith<$Res> {
  __$$RegisterDataModelImplCopyWithImpl(_$RegisterDataModelImpl _value,
      $Res Function(_$RegisterDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$RegisterDataModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterDataModelImpl implements _RegisterDataModel {
  const _$RegisterDataModelImpl({required this.token});

  factory _$RegisterDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterDataModelImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'RegisterDataModel(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDataModelImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of RegisterDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterDataModelImplCopyWith<_$RegisterDataModelImpl> get copyWith =>
      __$$RegisterDataModelImplCopyWithImpl<_$RegisterDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterDataModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterDataModel implements RegisterDataModel {
  const factory _RegisterDataModel({required final String token}) =
      _$RegisterDataModelImpl;

  factory _RegisterDataModel.fromJson(Map<String, dynamic> json) =
      _$RegisterDataModelImpl.fromJson;

  @override
  String get token;

  /// Create a copy of RegisterDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterDataModelImplCopyWith<_$RegisterDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
