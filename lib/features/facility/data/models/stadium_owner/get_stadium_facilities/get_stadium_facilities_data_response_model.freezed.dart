// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_stadium_facilities_data_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStadiumFacilitiesDataResponseModel
    _$GetStadiumFacilitiesDataResponseModelFromJson(Map<String, dynamic> json) {
  return _GetStadiumFacilitiesDataResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetStadiumFacilitiesDataResponseModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stadium_id')
  int get stadiumId => throw _privateConstructorUsedError;
  String get name =>
      throw _privateConstructorUsedError; // quantity in JSON is number; use int? here to match JSON
  @JsonKey(fromJson: _quantityFromJson)
  int get quantity =>
      throw _privateConstructorUsedError; // photos are an array of paths (strings)
  List<String>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'stadium')
  Map<String, dynamic>? get stadium => throw _privateConstructorUsedError;

  /// Serializes this GetStadiumFacilitiesDataResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetStadiumFacilitiesDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStadiumFacilitiesDataResponseModelCopyWith<
          GetStadiumFacilitiesDataResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStadiumFacilitiesDataResponseModelCopyWith<$Res> {
  factory $GetStadiumFacilitiesDataResponseModelCopyWith(
          GetStadiumFacilitiesDataResponseModel value,
          $Res Function(GetStadiumFacilitiesDataResponseModel) then) =
      _$GetStadiumFacilitiesDataResponseModelCopyWithImpl<$Res,
          GetStadiumFacilitiesDataResponseModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stadium_id') int stadiumId,
      String name,
      @JsonKey(fromJson: _quantityFromJson) int quantity,
      List<String>? photos,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'stadium') Map<String, dynamic>? stadium});
}

/// @nodoc
class _$GetStadiumFacilitiesDataResponseModelCopyWithImpl<$Res,
        $Val extends GetStadiumFacilitiesDataResponseModel>
    implements $GetStadiumFacilitiesDataResponseModelCopyWith<$Res> {
  _$GetStadiumFacilitiesDataResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStadiumFacilitiesDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stadiumId = null,
    Object? name = null,
    Object? quantity = null,
    Object? photos = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? stadium = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      stadium: freezed == stadium
          ? _value.stadium
          : stadium // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStadiumFacilitiesDataResponseModelImplCopyWith<$Res>
    implements $GetStadiumFacilitiesDataResponseModelCopyWith<$Res> {
  factory _$$GetStadiumFacilitiesDataResponseModelImplCopyWith(
          _$GetStadiumFacilitiesDataResponseModelImpl value,
          $Res Function(_$GetStadiumFacilitiesDataResponseModelImpl) then) =
      __$$GetStadiumFacilitiesDataResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stadium_id') int stadiumId,
      String name,
      @JsonKey(fromJson: _quantityFromJson) int quantity,
      List<String>? photos,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'stadium') Map<String, dynamic>? stadium});
}

/// @nodoc
class __$$GetStadiumFacilitiesDataResponseModelImplCopyWithImpl<$Res>
    extends _$GetStadiumFacilitiesDataResponseModelCopyWithImpl<$Res,
        _$GetStadiumFacilitiesDataResponseModelImpl>
    implements _$$GetStadiumFacilitiesDataResponseModelImplCopyWith<$Res> {
  __$$GetStadiumFacilitiesDataResponseModelImplCopyWithImpl(
      _$GetStadiumFacilitiesDataResponseModelImpl _value,
      $Res Function(_$GetStadiumFacilitiesDataResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetStadiumFacilitiesDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stadiumId = null,
    Object? name = null,
    Object? quantity = null,
    Object? photos = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? stadium = freezed,
  }) {
    return _then(_$GetStadiumFacilitiesDataResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      stadium: freezed == stadium
          ? _value._stadium
          : stadium // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStadiumFacilitiesDataResponseModelImpl
    with DiagnosticableTreeMixin
    implements _GetStadiumFacilitiesDataResponseModel {
  const _$GetStadiumFacilitiesDataResponseModelImpl(
      {this.id,
      @JsonKey(name: 'stadium_id') required this.stadiumId,
      required this.name,
      @JsonKey(fromJson: _quantityFromJson) required this.quantity,
      final List<String>? photos,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'stadium') final Map<String, dynamic>? stadium})
      : _photos = photos,
        _stadium = stadium;

  factory _$GetStadiumFacilitiesDataResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetStadiumFacilitiesDataResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'stadium_id')
  final int stadiumId;
  @override
  final String name;
// quantity in JSON is number; use int? here to match JSON
  @override
  @JsonKey(fromJson: _quantityFromJson)
  final int quantity;
// photos are an array of paths (strings)
  final List<String>? _photos;
// photos are an array of paths (strings)
  @override
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  final Map<String, dynamic>? _stadium;
  @override
  @JsonKey(name: 'stadium')
  Map<String, dynamic>? get stadium {
    final value = _stadium;
    if (value == null) return null;
    if (_stadium is EqualUnmodifiableMapView) return _stadium;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetStadiumFacilitiesDataResponseModel(id: $id, stadiumId: $stadiumId, name: $name, quantity: $quantity, photos: $photos, createdAt: $createdAt, updatedAt: $updatedAt, stadium: $stadium)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'GetStadiumFacilitiesDataResponseModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('stadiumId', stadiumId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('photos', photos))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('stadium', stadium));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStadiumFacilitiesDataResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stadiumId, stadiumId) ||
                other.stadiumId == stadiumId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._stadium, _stadium));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      stadiumId,
      name,
      quantity,
      const DeepCollectionEquality().hash(_photos),
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_stadium));

  /// Create a copy of GetStadiumFacilitiesDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStadiumFacilitiesDataResponseModelImplCopyWith<
          _$GetStadiumFacilitiesDataResponseModelImpl>
      get copyWith => __$$GetStadiumFacilitiesDataResponseModelImplCopyWithImpl<
          _$GetStadiumFacilitiesDataResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStadiumFacilitiesDataResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetStadiumFacilitiesDataResponseModel
    implements GetStadiumFacilitiesDataResponseModel {
  const factory _GetStadiumFacilitiesDataResponseModel(
          {final int? id,
          @JsonKey(name: 'stadium_id') required final int stadiumId,
          required final String name,
          @JsonKey(fromJson: _quantityFromJson) required final int quantity,
          final List<String>? photos,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'stadium') final Map<String, dynamic>? stadium}) =
      _$GetStadiumFacilitiesDataResponseModelImpl;

  factory _GetStadiumFacilitiesDataResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetStadiumFacilitiesDataResponseModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'stadium_id')
  int get stadiumId;
  @override
  String get name; // quantity in JSON is number; use int? here to match JSON
  @override
  @JsonKey(fromJson: _quantityFromJson)
  int get quantity; // photos are an array of paths (strings)
  @override
  List<String>? get photos;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'stadium')
  Map<String, dynamic>? get stadium;

  /// Create a copy of GetStadiumFacilitiesDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStadiumFacilitiesDataResponseModelImplCopyWith<
          _$GetStadiumFacilitiesDataResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
