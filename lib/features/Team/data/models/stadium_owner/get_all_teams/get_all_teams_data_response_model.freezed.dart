// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_teams_data_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllTeamsDataResponseModel _$GetAllTeamsDataResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetAllTeamsDataResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllTeamsDataResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GetAllTeamsDataResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAllTeamsDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllTeamsDataResponseModelCopyWith<GetAllTeamsDataResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllTeamsDataResponseModelCopyWith<$Res> {
  factory $GetAllTeamsDataResponseModelCopyWith(
          GetAllTeamsDataResponseModel value,
          $Res Function(GetAllTeamsDataResponseModel) then) =
      _$GetAllTeamsDataResponseModelCopyWithImpl<$Res,
          GetAllTeamsDataResponseModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GetAllTeamsDataResponseModelCopyWithImpl<$Res,
        $Val extends GetAllTeamsDataResponseModel>
    implements $GetAllTeamsDataResponseModelCopyWith<$Res> {
  _$GetAllTeamsDataResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllTeamsDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllTeamsDataResponseModelImplCopyWith<$Res>
    implements $GetAllTeamsDataResponseModelCopyWith<$Res> {
  factory _$$GetAllTeamsDataResponseModelImplCopyWith(
          _$GetAllTeamsDataResponseModelImpl value,
          $Res Function(_$GetAllTeamsDataResponseModelImpl) then) =
      __$$GetAllTeamsDataResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$GetAllTeamsDataResponseModelImplCopyWithImpl<$Res>
    extends _$GetAllTeamsDataResponseModelCopyWithImpl<$Res,
        _$GetAllTeamsDataResponseModelImpl>
    implements _$$GetAllTeamsDataResponseModelImplCopyWith<$Res> {
  __$$GetAllTeamsDataResponseModelImplCopyWithImpl(
      _$GetAllTeamsDataResponseModelImpl _value,
      $Res Function(_$GetAllTeamsDataResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllTeamsDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GetAllTeamsDataResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllTeamsDataResponseModelImpl
    with DiagnosticableTreeMixin
    implements _GetAllTeamsDataResponseModel {
  const _$GetAllTeamsDataResponseModelImpl(
      {required this.id, required this.name});

  factory _$GetAllTeamsDataResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllTeamsDataResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetAllTeamsDataResponseModel(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetAllTeamsDataResponseModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllTeamsDataResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GetAllTeamsDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllTeamsDataResponseModelImplCopyWith<
          _$GetAllTeamsDataResponseModelImpl>
      get copyWith => __$$GetAllTeamsDataResponseModelImplCopyWithImpl<
          _$GetAllTeamsDataResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllTeamsDataResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllTeamsDataResponseModel
    implements GetAllTeamsDataResponseModel {
  const factory _GetAllTeamsDataResponseModel(
      {required final int id,
      required final String name}) = _$GetAllTeamsDataResponseModelImpl;

  factory _GetAllTeamsDataResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetAllTeamsDataResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of GetAllTeamsDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllTeamsDataResponseModelImplCopyWith<
          _$GetAllTeamsDataResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
