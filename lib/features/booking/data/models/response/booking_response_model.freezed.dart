// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingResponseModel _$BookingResponseModelFromJson(Map<String, dynamic> json) {
  return _BookingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BookingResponseModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stadium_slot_id')
  int? get stadiumSlotId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'stadium_id')
  dynamic get stadiumId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  String? get paymentType => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this BookingResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingResponseModelCopyWith<BookingResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingResponseModelCopyWith<$Res> {
  factory $BookingResponseModelCopyWith(BookingResponseModel value,
          $Res Function(BookingResponseModel) then) =
      _$BookingResponseModelCopyWithImpl<$Res, BookingResponseModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stadium_slot_id') int? stadiumSlotId,
      @JsonKey(name: 'user_id') int? userId,
      String? date,
      @JsonKey(name: 'stadium_id') dynamic stadiumId,
      @JsonKey(name: 'payment_type') String? paymentType,
      String? status});
}

/// @nodoc
class _$BookingResponseModelCopyWithImpl<$Res,
        $Val extends BookingResponseModel>
    implements $BookingResponseModelCopyWith<$Res> {
  _$BookingResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stadiumSlotId = freezed,
    Object? userId = freezed,
    Object? date = freezed,
    Object? stadiumId = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      stadiumSlotId: freezed == stadiumSlotId
          ? _value.stadiumSlotId
          : stadiumSlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      stadiumId: freezed == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingResponseModelImplCopyWith<$Res>
    implements $BookingResponseModelCopyWith<$Res> {
  factory _$$BookingResponseModelImplCopyWith(_$BookingResponseModelImpl value,
          $Res Function(_$BookingResponseModelImpl) then) =
      __$$BookingResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stadium_slot_id') int? stadiumSlotId,
      @JsonKey(name: 'user_id') int? userId,
      String? date,
      @JsonKey(name: 'stadium_id') dynamic stadiumId,
      @JsonKey(name: 'payment_type') String? paymentType,
      String? status});
}

/// @nodoc
class __$$BookingResponseModelImplCopyWithImpl<$Res>
    extends _$BookingResponseModelCopyWithImpl<$Res, _$BookingResponseModelImpl>
    implements _$$BookingResponseModelImplCopyWith<$Res> {
  __$$BookingResponseModelImplCopyWithImpl(_$BookingResponseModelImpl _value,
      $Res Function(_$BookingResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stadiumSlotId = freezed,
    Object? userId = freezed,
    Object? date = freezed,
    Object? stadiumId = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
  }) {
    return _then(_$BookingResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      stadiumSlotId: freezed == stadiumSlotId
          ? _value.stadiumSlotId
          : stadiumSlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      stadiumId: freezed == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingResponseModelImpl implements _BookingResponseModel {
  const _$BookingResponseModelImpl(
      {this.id,
      @JsonKey(name: 'stadium_slot_id') this.stadiumSlotId,
      @JsonKey(name: 'user_id') this.userId,
      this.date,
      @JsonKey(name: 'stadium_id') this.stadiumId,
      @JsonKey(name: 'payment_type') this.paymentType,
      this.status});

  factory _$BookingResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'stadium_slot_id')
  final int? stadiumSlotId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? date;
  @override
  @JsonKey(name: 'stadium_id')
  final dynamic stadiumId;
  @override
  @JsonKey(name: 'payment_type')
  final String? paymentType;
  @override
  final String? status;

  @override
  String toString() {
    return 'BookingResponseModel(id: $id, stadiumSlotId: $stadiumSlotId, userId: $userId, date: $date, stadiumId: $stadiumId, paymentType: $paymentType, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stadiumSlotId, stadiumSlotId) ||
                other.stadiumSlotId == stadiumSlotId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other.stadiumId, stadiumId) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, stadiumSlotId, userId, date,
      const DeepCollectionEquality().hash(stadiumId), paymentType, status);

  /// Create a copy of BookingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingResponseModelImplCopyWith<_$BookingResponseModelImpl>
      get copyWith =>
          __$$BookingResponseModelImplCopyWithImpl<_$BookingResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BookingResponseModel implements BookingResponseModel {
  const factory _BookingResponseModel(
      {final int? id,
      @JsonKey(name: 'stadium_slot_id') final int? stadiumSlotId,
      @JsonKey(name: 'user_id') final int? userId,
      final String? date,
      @JsonKey(name: 'stadium_id') final dynamic stadiumId,
      @JsonKey(name: 'payment_type') final String? paymentType,
      final String? status}) = _$BookingResponseModelImpl;

  factory _BookingResponseModel.fromJson(Map<String, dynamic> json) =
      _$BookingResponseModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'stadium_slot_id')
  int? get stadiumSlotId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get date;
  @override
  @JsonKey(name: 'stadium_id')
  dynamic get stadiumId;
  @override
  @JsonKey(name: 'payment_type')
  String? get paymentType;
  @override
  String? get status;

  /// Create a copy of BookingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingResponseModelImplCopyWith<_$BookingResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
