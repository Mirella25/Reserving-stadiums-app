// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_stadium_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateStadiumRequestModel _$CreateStadiumRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateStadiumRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateStadiumRequestModel {
  @JsonKey(name: 'sport_id')
  int get sportId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Length')
  String get length => throw _privateConstructorUsedError;
  @JsonKey(name: 'Width')
  String get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_number')
  int get ownerNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get deposit => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;

  /// Serializes this CreateStadiumRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateStadiumRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateStadiumRequestModelCopyWith<CreateStadiumRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStadiumRequestModelCopyWith<$Res> {
  factory $CreateStadiumRequestModelCopyWith(CreateStadiumRequestModel value,
          $Res Function(CreateStadiumRequestModel) then) =
      _$CreateStadiumRequestModelCopyWithImpl<$Res, CreateStadiumRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sport_id') int sportId,
      String name,
      String location,
      String description,
      @JsonKey(name: 'Length') String length,
      @JsonKey(name: 'Width') String width,
      @JsonKey(name: 'owner_number') int ownerNumber,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      String price,
      String deposit,
      int duration,
      String latitude,
      String longitude});
}

/// @nodoc
class _$CreateStadiumRequestModelCopyWithImpl<$Res,
        $Val extends CreateStadiumRequestModel>
    implements $CreateStadiumRequestModelCopyWith<$Res> {
  _$CreateStadiumRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateStadiumRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sportId = null,
    Object? name = null,
    Object? location = null,
    Object? description = null,
    Object? length = null,
    Object? width = null,
    Object? ownerNumber = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? price = null,
    Object? deposit = null,
    Object? duration = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
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
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStadiumRequestModelImplCopyWith<$Res>
    implements $CreateStadiumRequestModelCopyWith<$Res> {
  factory _$$CreateStadiumRequestModelImplCopyWith(
          _$CreateStadiumRequestModelImpl value,
          $Res Function(_$CreateStadiumRequestModelImpl) then) =
      __$$CreateStadiumRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sport_id') int sportId,
      String name,
      String location,
      String description,
      @JsonKey(name: 'Length') String length,
      @JsonKey(name: 'Width') String width,
      @JsonKey(name: 'owner_number') int ownerNumber,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      String price,
      String deposit,
      int duration,
      String latitude,
      String longitude});
}

/// @nodoc
class __$$CreateStadiumRequestModelImplCopyWithImpl<$Res>
    extends _$CreateStadiumRequestModelCopyWithImpl<$Res,
        _$CreateStadiumRequestModelImpl>
    implements _$$CreateStadiumRequestModelImplCopyWith<$Res> {
  __$$CreateStadiumRequestModelImplCopyWithImpl(
      _$CreateStadiumRequestModelImpl _value,
      $Res Function(_$CreateStadiumRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateStadiumRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sportId = null,
    Object? name = null,
    Object? location = null,
    Object? description = null,
    Object? length = null,
    Object? width = null,
    Object? ownerNumber = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? price = null,
    Object? deposit = null,
    Object? duration = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$CreateStadiumRequestModelImpl(
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
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStadiumRequestModelImpl implements _CreateStadiumRequestModel {
  const _$CreateStadiumRequestModelImpl(
      {@JsonKey(name: 'sport_id') required this.sportId,
      required this.name,
      required this.location,
      required this.description,
      @JsonKey(name: 'Length') required this.length,
      @JsonKey(name: 'Width') required this.width,
      @JsonKey(name: 'owner_number') required this.ownerNumber,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      required this.price,
      required this.deposit,
      required this.duration,
      required this.latitude,
      required this.longitude});

  factory _$CreateStadiumRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStadiumRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'sport_id')
  final int sportId;
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
  final int ownerNumber;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  @JsonKey(name: 'end_time')
  final String endTime;
  @override
  final String price;
  @override
  final String deposit;
  @override
  final int duration;
  @override
  final String latitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'CreateStadiumRequestModel(sportId: $sportId, name: $name, location: $location, description: $description, length: $length, width: $width, ownerNumber: $ownerNumber, startTime: $startTime, endTime: $endTime, price: $price, deposit: $deposit, duration: $duration, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStadiumRequestModelImpl &&
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
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sportId,
      name,
      location,
      description,
      length,
      width,
      ownerNumber,
      startTime,
      endTime,
      price,
      deposit,
      duration,
      latitude,
      longitude);

  /// Create a copy of CreateStadiumRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStadiumRequestModelImplCopyWith<_$CreateStadiumRequestModelImpl>
      get copyWith => __$$CreateStadiumRequestModelImplCopyWithImpl<
          _$CreateStadiumRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStadiumRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateStadiumRequestModel implements CreateStadiumRequestModel {
  const factory _CreateStadiumRequestModel(
      {@JsonKey(name: 'sport_id') required final int sportId,
      required final String name,
      required final String location,
      required final String description,
      @JsonKey(name: 'Length') required final String length,
      @JsonKey(name: 'Width') required final String width,
      @JsonKey(name: 'owner_number') required final int ownerNumber,
      @JsonKey(name: 'start_time') required final String startTime,
      @JsonKey(name: 'end_time') required final String endTime,
      required final String price,
      required final String deposit,
      required final int duration,
      required final String latitude,
      required final String longitude}) = _$CreateStadiumRequestModelImpl;

  factory _CreateStadiumRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateStadiumRequestModelImpl.fromJson;

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
  @JsonKey(name: 'Length')
  String get length;
  @override
  @JsonKey(name: 'Width')
  String get width;
  @override
  @JsonKey(name: 'owner_number')
  int get ownerNumber;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  @JsonKey(name: 'end_time')
  String get endTime;
  @override
  String get price;
  @override
  String get deposit;
  @override
  int get duration;
  @override
  String get latitude;
  @override
  String get longitude;

  /// Create a copy of CreateStadiumRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateStadiumRequestModelImplCopyWith<_$CreateStadiumRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
