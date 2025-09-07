// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_league_data_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateLeagueDataResponseModel _$UpdateLeagueDataResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateLeagueDataResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateLeagueDataResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  String get prize => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'stadium_id')
  int get stadiumId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int? get createdBy => throw _privateConstructorUsedError;

  /// Serializes this UpdateLeagueDataResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateLeagueDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateLeagueDataResponseModelCopyWith<UpdateLeagueDataResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateLeagueDataResponseModelCopyWith<$Res> {
  factory $UpdateLeagueDataResponseModelCopyWith(
          UpdateLeagueDataResponseModel value,
          $Res Function(UpdateLeagueDataResponseModel) then) =
      _$UpdateLeagueDataResponseModelCopyWithImpl<$Res,
          UpdateLeagueDataResponseModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      String prize,
      String status,
      String description,
      @JsonKey(name: 'stadium_id') int stadiumId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_by') int? createdBy});
}

/// @nodoc
class _$UpdateLeagueDataResponseModelCopyWithImpl<$Res,
        $Val extends UpdateLeagueDataResponseModel>
    implements $UpdateLeagueDataResponseModelCopyWith<$Res> {
  _$UpdateLeagueDataResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateLeagueDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? prize = null,
    Object? status = null,
    Object? description = null,
    Object? stadiumId = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? createdBy = freezed,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      prize: null == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stadiumId: null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateLeagueDataResponseModelImplCopyWith<$Res>
    implements $UpdateLeagueDataResponseModelCopyWith<$Res> {
  factory _$$UpdateLeagueDataResponseModelImplCopyWith(
          _$UpdateLeagueDataResponseModelImpl value,
          $Res Function(_$UpdateLeagueDataResponseModelImpl) then) =
      __$$UpdateLeagueDataResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      String prize,
      String status,
      String description,
      @JsonKey(name: 'stadium_id') int stadiumId,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_by') int? createdBy});
}

/// @nodoc
class __$$UpdateLeagueDataResponseModelImplCopyWithImpl<$Res>
    extends _$UpdateLeagueDataResponseModelCopyWithImpl<$Res,
        _$UpdateLeagueDataResponseModelImpl>
    implements _$$UpdateLeagueDataResponseModelImplCopyWith<$Res> {
  __$$UpdateLeagueDataResponseModelImplCopyWithImpl(
      _$UpdateLeagueDataResponseModelImpl _value,
      $Res Function(_$UpdateLeagueDataResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateLeagueDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? prize = null,
    Object? status = null,
    Object? description = null,
    Object? stadiumId = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$UpdateLeagueDataResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      prize: null == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stadiumId: null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateLeagueDataResponseModelImpl
    with DiagnosticableTreeMixin
    implements _UpdateLeagueDataResponseModel {
  const _$UpdateLeagueDataResponseModelImpl(
      {required this.id,
      required this.name,
      required this.price,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.prize,
      required this.status,
      required this.description,
      @JsonKey(name: 'stadium_id') required this.stadiumId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_by') this.createdBy});

  factory _$UpdateLeagueDataResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateLeagueDataResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  final String prize;
  @override
  final String status;
  @override
  final String description;
  @override
  @JsonKey(name: 'stadium_id')
  final int stadiumId;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'created_by')
  final int? createdBy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateLeagueDataResponseModel(id: $id, name: $name, price: $price, startDate: $startDate, endDate: $endDate, prize: $prize, status: $status, description: $description, stadiumId: $stadiumId, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateLeagueDataResponseModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('prize', prize))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('stadiumId', stadiumId))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('createdBy', createdBy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLeagueDataResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.prize, prize) || other.prize == prize) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stadiumId, stadiumId) ||
                other.stadiumId == stadiumId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      startDate,
      endDate,
      prize,
      status,
      description,
      stadiumId,
      createdAt,
      updatedAt,
      createdBy);

  /// Create a copy of UpdateLeagueDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLeagueDataResponseModelImplCopyWith<
          _$UpdateLeagueDataResponseModelImpl>
      get copyWith => __$$UpdateLeagueDataResponseModelImplCopyWithImpl<
          _$UpdateLeagueDataResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateLeagueDataResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateLeagueDataResponseModel
    implements UpdateLeagueDataResponseModel {
  const factory _UpdateLeagueDataResponseModel(
          {required final int id,
          required final String name,
          required final double price,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate,
          required final String prize,
          required final String status,
          required final String description,
          @JsonKey(name: 'stadium_id') required final int stadiumId,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'created_by') final int? createdBy}) =
      _$UpdateLeagueDataResponseModelImpl;

  factory _UpdateLeagueDataResponseModel.fromJson(Map<String, dynamic> json) =
      _$UpdateLeagueDataResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get price;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  String get prize;
  @override
  String get status;
  @override
  String get description;
  @override
  @JsonKey(name: 'stadium_id')
  int get stadiumId;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'created_by')
  int? get createdBy;

  /// Create a copy of UpdateLeagueDataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateLeagueDataResponseModelImplCopyWith<
          _$UpdateLeagueDataResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
