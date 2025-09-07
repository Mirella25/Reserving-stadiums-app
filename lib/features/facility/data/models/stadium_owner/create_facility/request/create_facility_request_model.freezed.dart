// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_facility_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateFacilityRequestModel _$CreateFacilityRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateFacilityRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateFacilityRequestModel {
  @JsonKey(name: 'stadium_id')
  int get stadiumId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;

  /// Serializes this CreateFacilityRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateFacilityRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFacilityRequestModelCopyWith<CreateFacilityRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFacilityRequestModelCopyWith<$Res> {
  factory $CreateFacilityRequestModelCopyWith(CreateFacilityRequestModel value,
          $Res Function(CreateFacilityRequestModel) then) =
      _$CreateFacilityRequestModelCopyWithImpl<$Res,
          CreateFacilityRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'stadium_id') int stadiumId,
      String name,
      String quantity});
}

/// @nodoc
class _$CreateFacilityRequestModelCopyWithImpl<$Res,
        $Val extends CreateFacilityRequestModel>
    implements $CreateFacilityRequestModelCopyWith<$Res> {
  _$CreateFacilityRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFacilityRequestModel
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
abstract class _$$CreateFacilityRequestModelImplCopyWith<$Res>
    implements $CreateFacilityRequestModelCopyWith<$Res> {
  factory _$$CreateFacilityRequestModelImplCopyWith(
          _$CreateFacilityRequestModelImpl value,
          $Res Function(_$CreateFacilityRequestModelImpl) then) =
      __$$CreateFacilityRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'stadium_id') int stadiumId,
      String name,
      String quantity});
}

/// @nodoc
class __$$CreateFacilityRequestModelImplCopyWithImpl<$Res>
    extends _$CreateFacilityRequestModelCopyWithImpl<$Res,
        _$CreateFacilityRequestModelImpl>
    implements _$$CreateFacilityRequestModelImplCopyWith<$Res> {
  __$$CreateFacilityRequestModelImplCopyWithImpl(
      _$CreateFacilityRequestModelImpl _value,
      $Res Function(_$CreateFacilityRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateFacilityRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadiumId = null,
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_$CreateFacilityRequestModelImpl(
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
class _$CreateFacilityRequestModelImpl
    with DiagnosticableTreeMixin
    implements _CreateFacilityRequestModel {
  const _$CreateFacilityRequestModelImpl(
      {@JsonKey(name: 'stadium_id') required this.stadiumId,
      required this.name,
      required this.quantity});

  factory _$CreateFacilityRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateFacilityRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'stadium_id')
  final int stadiumId;
  @override
  final String name;
  @override
  final String quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateFacilityRequestModel(stadiumId: $stadiumId, name: $name, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateFacilityRequestModel'))
      ..add(DiagnosticsProperty('stadiumId', stadiumId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFacilityRequestModelImpl &&
            (identical(other.stadiumId, stadiumId) ||
                other.stadiumId == stadiumId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stadiumId, name, quantity);

  /// Create a copy of CreateFacilityRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFacilityRequestModelImplCopyWith<_$CreateFacilityRequestModelImpl>
      get copyWith => __$$CreateFacilityRequestModelImplCopyWithImpl<
          _$CreateFacilityRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFacilityRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateFacilityRequestModel
    implements CreateFacilityRequestModel {
  const factory _CreateFacilityRequestModel(
      {@JsonKey(name: 'stadium_id') required final int stadiumId,
      required final String name,
      required final String quantity}) = _$CreateFacilityRequestModelImpl;

  factory _CreateFacilityRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateFacilityRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'stadium_id')
  int get stadiumId;
  @override
  String get name;
  @override
  String get quantity;

  /// Create a copy of CreateFacilityRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFacilityRequestModelImplCopyWith<_$CreateFacilityRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
