// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_league_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateLeagueRequestModel _$CreateLeagueRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateLeagueRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateLeagueRequestModel {
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

  /// Serializes this CreateLeagueRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateLeagueRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateLeagueRequestModelCopyWith<CreateLeagueRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLeagueRequestModelCopyWith<$Res> {
  factory $CreateLeagueRequestModelCopyWith(CreateLeagueRequestModel value,
          $Res Function(CreateLeagueRequestModel) then) =
      _$CreateLeagueRequestModelCopyWithImpl<$Res, CreateLeagueRequestModel>;
  @useResult
  $Res call(
      {String name,
      double price,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      String prize,
      String status,
      String description,
      @JsonKey(name: 'stadium_id') int stadiumId});
}

/// @nodoc
class _$CreateLeagueRequestModelCopyWithImpl<$Res,
        $Val extends CreateLeagueRequestModel>
    implements $CreateLeagueRequestModelCopyWith<$Res> {
  _$CreateLeagueRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateLeagueRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? prize = null,
    Object? status = null,
    Object? description = null,
    Object? stadiumId = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateLeagueRequestModelImplCopyWith<$Res>
    implements $CreateLeagueRequestModelCopyWith<$Res> {
  factory _$$CreateLeagueRequestModelImplCopyWith(
          _$CreateLeagueRequestModelImpl value,
          $Res Function(_$CreateLeagueRequestModelImpl) then) =
      __$$CreateLeagueRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double price,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      String prize,
      String status,
      String description,
      @JsonKey(name: 'stadium_id') int stadiumId});
}

/// @nodoc
class __$$CreateLeagueRequestModelImplCopyWithImpl<$Res>
    extends _$CreateLeagueRequestModelCopyWithImpl<$Res,
        _$CreateLeagueRequestModelImpl>
    implements _$$CreateLeagueRequestModelImplCopyWith<$Res> {
  __$$CreateLeagueRequestModelImplCopyWithImpl(
      _$CreateLeagueRequestModelImpl _value,
      $Res Function(_$CreateLeagueRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateLeagueRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? prize = null,
    Object? status = null,
    Object? description = null,
    Object? stadiumId = null,
  }) {
    return _then(_$CreateLeagueRequestModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateLeagueRequestModelImpl
    with DiagnosticableTreeMixin
    implements _CreateLeagueRequestModel {
  const _$CreateLeagueRequestModelImpl(
      {required this.name,
      required this.price,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.prize,
      required this.status,
      required this.description,
      @JsonKey(name: 'stadium_id') required this.stadiumId});

  factory _$CreateLeagueRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateLeagueRequestModelImplFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateLeagueRequestModel(name: $name, price: $price, startDate: $startDate, endDate: $endDate, prize: $prize, status: $status, description: $description, stadiumId: $stadiumId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateLeagueRequestModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('prize', prize))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('stadiumId', stadiumId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLeagueRequestModelImpl &&
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
                other.stadiumId == stadiumId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, startDate, endDate,
      prize, status, description, stadiumId);

  /// Create a copy of CreateLeagueRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateLeagueRequestModelImplCopyWith<_$CreateLeagueRequestModelImpl>
      get copyWith => __$$CreateLeagueRequestModelImplCopyWithImpl<
          _$CreateLeagueRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateLeagueRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateLeagueRequestModel implements CreateLeagueRequestModel {
  const factory _CreateLeagueRequestModel(
          {required final String name,
          required final double price,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate,
          required final String prize,
          required final String status,
          required final String description,
          @JsonKey(name: 'stadium_id') required final int stadiumId}) =
      _$CreateLeagueRequestModelImpl;

  factory _CreateLeagueRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateLeagueRequestModelImpl.fromJson;

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

  /// Create a copy of CreateLeagueRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateLeagueRequestModelImplCopyWith<_$CreateLeagueRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
