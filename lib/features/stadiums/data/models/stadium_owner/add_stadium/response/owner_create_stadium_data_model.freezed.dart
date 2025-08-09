// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_create_stadium_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OwnerCreateStadiumDataModel _$OwnerCreateStadiumDataModelFromJson(
    Map<String, dynamic> json) {
  return _OwnerCreateStadiumDataModel.fromJson(json);
}

/// @nodoc
mixin _$OwnerCreateStadiumDataModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sport_id')
  String get sportId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Length')
  String get length => throw _privateConstructorUsedError;
  @JsonKey(name: 'Width')
  String get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_number')
  String get ownerNumber => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OwnerCreateStadiumDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OwnerCreateStadiumDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerCreateStadiumDataModelCopyWith<OwnerCreateStadiumDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCreateStadiumDataModelCopyWith<$Res> {
  factory $OwnerCreateStadiumDataModelCopyWith(
          OwnerCreateStadiumDataModel value,
          $Res Function(OwnerCreateStadiumDataModel) then) =
      _$OwnerCreateStadiumDataModelCopyWithImpl<$Res,
          OwnerCreateStadiumDataModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'sport_id') String sportId,
      String name,
      String location,
      String description,
      @JsonKey(name: 'Length') String length,
      @JsonKey(name: 'Width') String width,
      @JsonKey(name: 'owner_number') String ownerNumber,
      List<String>? photos,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$OwnerCreateStadiumDataModelCopyWithImpl<$Res,
        $Val extends OwnerCreateStadiumDataModel>
    implements $OwnerCreateStadiumDataModelCopyWith<$Res> {
  _$OwnerCreateStadiumDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerCreateStadiumDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sportId = null,
    Object? name = null,
    Object? location = null,
    Object? description = null,
    Object? length = null,
    Object? width = null,
    Object? ownerNumber = null,
    Object? photos = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      ownerNumber: null == ownerNumber
          ? _value.ownerNumber
          : ownerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerCreateStadiumDataModelImplCopyWith<$Res>
    implements $OwnerCreateStadiumDataModelCopyWith<$Res> {
  factory _$$OwnerCreateStadiumDataModelImplCopyWith(
          _$OwnerCreateStadiumDataModelImpl value,
          $Res Function(_$OwnerCreateStadiumDataModelImpl) then) =
      __$$OwnerCreateStadiumDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'sport_id') String sportId,
      String name,
      String location,
      String description,
      @JsonKey(name: 'Length') String length,
      @JsonKey(name: 'Width') String width,
      @JsonKey(name: 'owner_number') String ownerNumber,
      List<String>? photos,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$OwnerCreateStadiumDataModelImplCopyWithImpl<$Res>
    extends _$OwnerCreateStadiumDataModelCopyWithImpl<$Res,
        _$OwnerCreateStadiumDataModelImpl>
    implements _$$OwnerCreateStadiumDataModelImplCopyWith<$Res> {
  __$$OwnerCreateStadiumDataModelImplCopyWithImpl(
      _$OwnerCreateStadiumDataModelImpl _value,
      $Res Function(_$OwnerCreateStadiumDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerCreateStadiumDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sportId = null,
    Object? name = null,
    Object? location = null,
    Object? description = null,
    Object? length = null,
    Object? width = null,
    Object? ownerNumber = null,
    Object? photos = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$OwnerCreateStadiumDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      ownerNumber: null == ownerNumber
          ? _value.ownerNumber
          : ownerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerCreateStadiumDataModelImpl
    with DiagnosticableTreeMixin
    implements _OwnerCreateStadiumDataModel {
  _$OwnerCreateStadiumDataModelImpl(
      {required this.id,
      @JsonKey(name: 'sport_id') required this.sportId,
      required this.name,
      required this.location,
      required this.description,
      @JsonKey(name: 'Length') required this.length,
      @JsonKey(name: 'Width') required this.width,
      @JsonKey(name: 'owner_number') required this.ownerNumber,
      final List<String>? photos,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _photos = photos;

  factory _$OwnerCreateStadiumDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OwnerCreateStadiumDataModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'sport_id')
  final String sportId;
  @override
  final String name;
  @override
  final String location;
  @override
  final String description;
  @override
  @JsonKey(name: 'Length')
  final String length;
  @override
  @JsonKey(name: 'Width')
  final String width;
  @override
  @JsonKey(name: 'owner_number')
  final String ownerNumber;
  final List<String>? _photos;
  @override
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OwnerCreateStadiumDataModel(id: $id, sportId: $sportId, name: $name, location: $location, description: $description, length: $length, width: $width, ownerNumber: $ownerNumber, photos: $photos, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OwnerCreateStadiumDataModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sportId', sportId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('length', length))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('ownerNumber', ownerNumber))
      ..add(DiagnosticsProperty('photos', photos))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerCreateStadiumDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sportId, sportId) || other.sportId == sportId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.ownerNumber, ownerNumber) ||
                other.ownerNumber == ownerNumber) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
      sportId,
      name,
      location,
      description,
      length,
      width,
      ownerNumber,
      const DeepCollectionEquality().hash(_photos),
      userId,
      createdAt,
      updatedAt);

  /// Create a copy of OwnerCreateStadiumDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerCreateStadiumDataModelImplCopyWith<_$OwnerCreateStadiumDataModelImpl>
      get copyWith => __$$OwnerCreateStadiumDataModelImplCopyWithImpl<
          _$OwnerCreateStadiumDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerCreateStadiumDataModelImplToJson(
      this,
    );
  }
}

abstract class _OwnerCreateStadiumDataModel
    implements OwnerCreateStadiumDataModel {
  factory _OwnerCreateStadiumDataModel(
          {required final int id,
          @JsonKey(name: 'sport_id') required final String sportId,
          required final String name,
          required final String location,
          required final String description,
          @JsonKey(name: 'Length') required final String length,
          @JsonKey(name: 'Width') required final String width,
          @JsonKey(name: 'owner_number') required final String ownerNumber,
          final List<String>? photos,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$OwnerCreateStadiumDataModelImpl;

  factory _OwnerCreateStadiumDataModel.fromJson(Map<String, dynamic> json) =
      _$OwnerCreateStadiumDataModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'sport_id')
  String get sportId;
  @override
  String get name;
  @override
  String get location;
  @override
  String get description;
  @override
  @JsonKey(name: 'Length')
  String get length;
  @override
  @JsonKey(name: 'Width')
  String get width;
  @override
  @JsonKey(name: 'owner_number')
  String get ownerNumber;
  @override
  List<String>? get photos;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of OwnerCreateStadiumDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerCreateStadiumDataModelImplCopyWith<_$OwnerCreateStadiumDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
