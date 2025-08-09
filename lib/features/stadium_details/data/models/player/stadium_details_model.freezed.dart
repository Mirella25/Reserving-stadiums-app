// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stadium_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StadiumDetailsModel _$StadiumDetailsModelFromJson(Map<String, dynamic> json) {
  return _StadiumDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$StadiumDetailsModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sport_id')
  int get sportId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'Length')
  String get length => throw _privateConstructorUsedError;
  @JsonKey(name: 'Width')
  String get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_number')
  int get ownerNumber => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this StadiumDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StadiumDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StadiumDetailsModelCopyWith<StadiumDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StadiumDetailsModelCopyWith<$Res> {
  factory $StadiumDetailsModelCopyWith(
          StadiumDetailsModel value, $Res Function(StadiumDetailsModel) then) =
      _$StadiumDetailsModelCopyWithImpl<$Res, StadiumDetailsModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'sport_id') int sportId,
      String name,
      String location,
      String description,
      List<String>? photos,
      @JsonKey(name: 'Length') String length,
      @JsonKey(name: 'Width') String width,
      @JsonKey(name: 'owner_number') int ownerNumber,
      @JsonKey(fromJson: _toDouble) double latitude,
      @JsonKey(fromJson: _toDouble) double longitude});
}

/// @nodoc
class _$StadiumDetailsModelCopyWithImpl<$Res, $Val extends StadiumDetailsModel>
    implements $StadiumDetailsModelCopyWith<$Res> {
  _$StadiumDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StadiumDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? sportId = null,
    Object? name = null,
    Object? location = null,
    Object? description = null,
    Object? photos = freezed,
    Object? length = null,
    Object? width = null,
    Object? ownerNumber = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int,
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
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StadiumDetailsModelImplCopyWith<$Res>
    implements $StadiumDetailsModelCopyWith<$Res> {
  factory _$$StadiumDetailsModelImplCopyWith(_$StadiumDetailsModelImpl value,
          $Res Function(_$StadiumDetailsModelImpl) then) =
      __$$StadiumDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'sport_id') int sportId,
      String name,
      String location,
      String description,
      List<String>? photos,
      @JsonKey(name: 'Length') String length,
      @JsonKey(name: 'Width') String width,
      @JsonKey(name: 'owner_number') int ownerNumber,
      @JsonKey(fromJson: _toDouble) double latitude,
      @JsonKey(fromJson: _toDouble) double longitude});
}

/// @nodoc
class __$$StadiumDetailsModelImplCopyWithImpl<$Res>
    extends _$StadiumDetailsModelCopyWithImpl<$Res, _$StadiumDetailsModelImpl>
    implements _$$StadiumDetailsModelImplCopyWith<$Res> {
  __$$StadiumDetailsModelImplCopyWithImpl(_$StadiumDetailsModelImpl _value,
      $Res Function(_$StadiumDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StadiumDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? sportId = null,
    Object? name = null,
    Object? location = null,
    Object? description = null,
    Object? photos = freezed,
    Object? length = null,
    Object? width = null,
    Object? ownerNumber = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$StadiumDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      sportId: null == sportId
          ? _value.sportId
          : sportId // ignore: cast_nullable_to_non_nullable
              as int,
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
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StadiumDetailsModelImpl implements _StadiumDetailsModel {
  const _$StadiumDetailsModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'sport_id') required this.sportId,
      required this.name,
      required this.location,
      required this.description,
      final List<String>? photos,
      @JsonKey(name: 'Length') required this.length,
      @JsonKey(name: 'Width') required this.width,
      @JsonKey(name: 'owner_number') required this.ownerNumber,
      @JsonKey(fromJson: _toDouble) required this.latitude,
      @JsonKey(fromJson: _toDouble) required this.longitude})
      : _photos = photos;

  factory _$StadiumDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StadiumDetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'sport_id')
  final int sportId;
  @override
  final String name;
  @override
  final String location;
  @override
  final String description;
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
  @JsonKey(name: 'Length')
  final String length;
  @override
  @JsonKey(name: 'Width')
  final String width;
  @override
  @JsonKey(name: 'owner_number')
  final int ownerNumber;
  @override
  @JsonKey(fromJson: _toDouble)
  final double latitude;
  @override
  @JsonKey(fromJson: _toDouble)
  final double longitude;

  @override
  String toString() {
    return 'StadiumDetailsModel(id: $id, userId: $userId, sportId: $sportId, name: $name, location: $location, description: $description, photos: $photos, length: $length, width: $width, ownerNumber: $ownerNumber, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StadiumDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sportId, sportId) || other.sportId == sportId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.ownerNumber, ownerNumber) ||
                other.ownerNumber == ownerNumber) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      sportId,
      name,
      location,
      description,
      const DeepCollectionEquality().hash(_photos),
      length,
      width,
      ownerNumber,
      latitude,
      longitude);

  /// Create a copy of StadiumDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StadiumDetailsModelImplCopyWith<_$StadiumDetailsModelImpl> get copyWith =>
      __$$StadiumDetailsModelImplCopyWithImpl<_$StadiumDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StadiumDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _StadiumDetailsModel implements StadiumDetailsModel {
  const factory _StadiumDetailsModel(
          {required final int id,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'sport_id') required final int sportId,
          required final String name,
          required final String location,
          required final String description,
          final List<String>? photos,
          @JsonKey(name: 'Length') required final String length,
          @JsonKey(name: 'Width') required final String width,
          @JsonKey(name: 'owner_number') required final int ownerNumber,
          @JsonKey(fromJson: _toDouble) required final double latitude,
          @JsonKey(fromJson: _toDouble) required final double longitude}) =
      _$StadiumDetailsModelImpl;

  factory _StadiumDetailsModel.fromJson(Map<String, dynamic> json) =
      _$StadiumDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'sport_id')
  int get sportId;
  @override
  String get name;
  @override
  String get location;
  @override
  String get description;
  @override
  List<String>? get photos;
  @override
  @JsonKey(name: 'Length')
  String get length;
  @override
  @JsonKey(name: 'Width')
  String get width;
  @override
  @JsonKey(name: 'owner_number')
  int get ownerNumber;
  @override
  @JsonKey(fromJson: _toDouble)
  double get latitude;
  @override
  @JsonKey(fromJson: _toDouble)
  double get longitude;

  /// Create a copy of StadiumDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StadiumDetailsModelImplCopyWith<_$StadiumDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
