// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_facility_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateFacilityRequestModel _$UpdateFacilityRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateFacilityRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateFacilityRequestModel {
  @JsonKey(name: 'stadium_id')
  int get stadiumId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;

  /// Serializes this UpdateFacilityRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFacilityRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFacilityRequestModelCopyWith<UpdateFacilityRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFacilityRequestModelCopyWith<$Res> {
  factory $UpdateFacilityRequestModelCopyWith(UpdateFacilityRequestModel value,
          $Res Function(UpdateFacilityRequestModel) then) =
      _$UpdateFacilityRequestModelCopyWithImpl<$Res,
          UpdateFacilityRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'stadium_id') int stadiumId,
      String name,
      String quantity});
}

/// @nodoc
class _$UpdateFacilityRequestModelCopyWithImpl<$Res,
        $Val extends UpdateFacilityRequestModel>
    implements $UpdateFacilityRequestModelCopyWith<$Res> {
  _$UpdateFacilityRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFacilityRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadiumId = null,
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      stadiumId: null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateFacilityRequestModelImplCopyWith<$Res>
    implements $UpdateFacilityRequestModelCopyWith<$Res> {
  factory _$$UpdateFacilityRequestModelImplCopyWith(
          _$UpdateFacilityRequestModelImpl value,
          $Res Function(_$UpdateFacilityRequestModelImpl) then) =
      __$$UpdateFacilityRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'stadium_id') int stadiumId,
      String name,
      String quantity});
}

/// @nodoc
class __$$UpdateFacilityRequestModelImplCopyWithImpl<$Res>
    extends _$UpdateFacilityRequestModelCopyWithImpl<$Res,
        _$UpdateFacilityRequestModelImpl>
    implements _$$UpdateFacilityRequestModelImplCopyWith<$Res> {
  __$$UpdateFacilityRequestModelImplCopyWithImpl(
      _$UpdateFacilityRequestModelImpl _value,
      $Res Function(_$UpdateFacilityRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateFacilityRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadiumId = null,
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateFacilityRequestModelImpl(
      stadiumId: null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFacilityRequestModelImpl
    with DiagnosticableTreeMixin
    implements _UpdateFacilityRequestModel {
  const _$UpdateFacilityRequestModelImpl(
      {@JsonKey(name: 'stadium_id') required this.stadiumId,
      required this.name,
      required this.quantity});

  factory _$UpdateFacilityRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateFacilityRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'stadium_id')
  final int stadiumId;
  @override
  final String name;
  @override
  final String quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateFacilityRequestModel(stadiumId: $stadiumId, name: $name, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateFacilityRequestModel'))
      ..add(DiagnosticsProperty('stadiumId', stadiumId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFacilityRequestModelImpl &&
            (identical(other.stadiumId, stadiumId) ||
                other.stadiumId == stadiumId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stadiumId, name, quantity);

  /// Create a copy of UpdateFacilityRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFacilityRequestModelImplCopyWith<_$UpdateFacilityRequestModelImpl>
      get copyWith => __$$UpdateFacilityRequestModelImplCopyWithImpl<
          _$UpdateFacilityRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFacilityRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateFacilityRequestModel
    implements UpdateFacilityRequestModel {
  const factory _UpdateFacilityRequestModel(
      {@JsonKey(name: 'stadium_id') required final int stadiumId,
      required final String name,
      required final String quantity}) = _$UpdateFacilityRequestModelImpl;

  factory _UpdateFacilityRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateFacilityRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'stadium_id')
  int get stadiumId;
  @override
  String get name;
  @override
  String get quantity;

  /// Create a copy of UpdateFacilityRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFacilityRequestModelImplCopyWith<_$UpdateFacilityRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
