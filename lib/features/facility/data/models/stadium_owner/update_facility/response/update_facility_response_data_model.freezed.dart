// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_facility_response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateFacilityResponseDataModel _$UpdateFacilityResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateFacilityResponseDataModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateFacilityResponseDataModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stadium_id', fromJson: _parseInt)
  int get stadiumId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// quantity may be absent in some responses -> keep nullable
  @JsonKey(fromJson: _parseNullableString)
  String? get quantity => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parsePhotos)
  List<String>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', fromJson: _parseDateTime)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', fromJson: _parseDateTime)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// stadium payload - keep as raw map so caller decides how to map it.
  /// (If you prefer, you can map this to StadiumEntity with a custom parser.)
  @JsonKey(name: 'stadium')
  Map<String, dynamic>? get stadium => throw _privateConstructorUsedError;

  /// Serializes this UpdateFacilityResponseDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFacilityResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFacilityResponseDataModelCopyWith<UpdateFacilityResponseDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFacilityResponseDataModelCopyWith<$Res> {
  factory $UpdateFacilityResponseDataModelCopyWith(
          UpdateFacilityResponseDataModel value,
          $Res Function(UpdateFacilityResponseDataModel) then) =
      _$UpdateFacilityResponseDataModelCopyWithImpl<$Res,
          UpdateFacilityResponseDataModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stadium_id', fromJson: _parseInt) int stadiumId,
      String name,
      @JsonKey(fromJson: _parseNullableString) String? quantity,
      @JsonKey(fromJson: _parsePhotos) List<String>? photos,
      @JsonKey(name: 'created_at', fromJson: _parseDateTime)
      DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: _parseDateTime)
      DateTime? updatedAt,
      @JsonKey(name: 'stadium') Map<String, dynamic>? stadium});
}

/// @nodoc
class _$UpdateFacilityResponseDataModelCopyWithImpl<$Res,
        $Val extends UpdateFacilityResponseDataModel>
    implements $UpdateFacilityResponseDataModelCopyWith<$Res> {
  _$UpdateFacilityResponseDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFacilityResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stadiumId = null,
    Object? name = null,
    Object? quantity = freezed,
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stadium: freezed == stadium
          ? _value.stadium
          : stadium // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateFacilityResponseDataModelImplCopyWith<$Res>
    implements $UpdateFacilityResponseDataModelCopyWith<$Res> {
  factory _$$UpdateFacilityResponseDataModelImplCopyWith(
          _$UpdateFacilityResponseDataModelImpl value,
          $Res Function(_$UpdateFacilityResponseDataModelImpl) then) =
      __$$UpdateFacilityResponseDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stadium_id', fromJson: _parseInt) int stadiumId,
      String name,
      @JsonKey(fromJson: _parseNullableString) String? quantity,
      @JsonKey(fromJson: _parsePhotos) List<String>? photos,
      @JsonKey(name: 'created_at', fromJson: _parseDateTime)
      DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: _parseDateTime)
      DateTime? updatedAt,
      @JsonKey(name: 'stadium') Map<String, dynamic>? stadium});
}

/// @nodoc
class __$$UpdateFacilityResponseDataModelImplCopyWithImpl<$Res>
    extends _$UpdateFacilityResponseDataModelCopyWithImpl<$Res,
        _$UpdateFacilityResponseDataModelImpl>
    implements _$$UpdateFacilityResponseDataModelImplCopyWith<$Res> {
  __$$UpdateFacilityResponseDataModelImplCopyWithImpl(
      _$UpdateFacilityResponseDataModelImpl _value,
      $Res Function(_$UpdateFacilityResponseDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateFacilityResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stadiumId = null,
    Object? name = null,
    Object? quantity = freezed,
    Object? photos = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? stadium = freezed,
  }) {
    return _then(_$UpdateFacilityResponseDataModelImpl(
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stadium: freezed == stadium
          ? _value._stadium
          : stadium // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFacilityResponseDataModelImpl
    with DiagnosticableTreeMixin
    implements _UpdateFacilityResponseDataModel {
  const _$UpdateFacilityResponseDataModelImpl(
      {this.id,
      @JsonKey(name: 'stadium_id', fromJson: _parseInt) required this.stadiumId,
      required this.name,
      @JsonKey(fromJson: _parseNullableString) this.quantity,
      @JsonKey(fromJson: _parsePhotos) final List<String>? photos,
      @JsonKey(name: 'created_at', fromJson: _parseDateTime) this.createdAt,
      @JsonKey(name: 'updated_at', fromJson: _parseDateTime) this.updatedAt,
      @JsonKey(name: 'stadium') final Map<String, dynamic>? stadium})
      : _photos = photos,
        _stadium = stadium;

  factory _$UpdateFacilityResponseDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateFacilityResponseDataModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'stadium_id', fromJson: _parseInt)
  final int stadiumId;
  @override
  final String name;

  /// quantity may be absent in some responses -> keep nullable
  @override
  @JsonKey(fromJson: _parseNullableString)
  final String? quantity;
  final List<String>? _photos;
  @override
  @JsonKey(fromJson: _parsePhotos)
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at', fromJson: _parseDateTime)
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _parseDateTime)
  final DateTime? updatedAt;

  /// stadium payload - keep as raw map so caller decides how to map it.
  /// (If you prefer, you can map this to StadiumEntity with a custom parser.)
  final Map<String, dynamic>? _stadium;

  /// stadium payload - keep as raw map so caller decides how to map it.
  /// (If you prefer, you can map this to StadiumEntity with a custom parser.)
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
    return 'UpdateFacilityResponseDataModel(id: $id, stadiumId: $stadiumId, name: $name, quantity: $quantity, photos: $photos, createdAt: $createdAt, updatedAt: $updatedAt, stadium: $stadium)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateFacilityResponseDataModel'))
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
            other is _$UpdateFacilityResponseDataModelImpl &&
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

  /// Create a copy of UpdateFacilityResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFacilityResponseDataModelImplCopyWith<
          _$UpdateFacilityResponseDataModelImpl>
      get copyWith => __$$UpdateFacilityResponseDataModelImplCopyWithImpl<
          _$UpdateFacilityResponseDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFacilityResponseDataModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateFacilityResponseDataModel
    implements UpdateFacilityResponseDataModel {
  const factory _UpdateFacilityResponseDataModel(
          {final int? id,
          @JsonKey(name: 'stadium_id', fromJson: _parseInt)
          required final int stadiumId,
          required final String name,
          @JsonKey(fromJson: _parseNullableString) final String? quantity,
          @JsonKey(fromJson: _parsePhotos) final List<String>? photos,
          @JsonKey(name: 'created_at', fromJson: _parseDateTime)
          final DateTime? createdAt,
          @JsonKey(name: 'updated_at', fromJson: _parseDateTime)
          final DateTime? updatedAt,
          @JsonKey(name: 'stadium') final Map<String, dynamic>? stadium}) =
      _$UpdateFacilityResponseDataModelImpl;

  factory _UpdateFacilityResponseDataModel.fromJson(Map<String, dynamic> json) =
      _$UpdateFacilityResponseDataModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'stadium_id', fromJson: _parseInt)
  int get stadiumId;
  @override
  String get name;

  /// quantity may be absent in some responses -> keep nullable
  @override
  @JsonKey(fromJson: _parseNullableString)
  String? get quantity;
  @override
  @JsonKey(fromJson: _parsePhotos)
  List<String>? get photos;
  @override
  @JsonKey(name: 'created_at', fromJson: _parseDateTime)
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _parseDateTime)
  DateTime? get updatedAt;

  /// stadium payload - keep as raw map so caller decides how to map it.
  /// (If you prefer, you can map this to StadiumEntity with a custom parser.)
  @override
  @JsonKey(name: 'stadium')
  Map<String, dynamic>? get stadium;

  /// Create a copy of UpdateFacilityResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFacilityResponseDataModelImplCopyWith<
          _$UpdateFacilityResponseDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
