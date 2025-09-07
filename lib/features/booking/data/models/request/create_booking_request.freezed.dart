// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_booking_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBookingRequest _$CreateBookingRequestFromJson(Map<String, dynamic> json) {
  return _CreateBookingRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateBookingRequest {
  @JsonKey(name: 'stadium_slot_id')
  int get stadiumSlotId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError; // "YYYY-M-D"
  @JsonKey(name: 'stadium_id')
  int get stadiumId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  String get paymentType => throw _privateConstructorUsedError;

  /// Serializes this CreateBookingRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateBookingRequestCopyWith<CreateBookingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookingRequestCopyWith<$Res> {
  factory $CreateBookingRequestCopyWith(CreateBookingRequest value,
          $Res Function(CreateBookingRequest) then) =
      _$CreateBookingRequestCopyWithImpl<$Res, CreateBookingRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'stadium_slot_id') int stadiumSlotId,
      String date,
      @JsonKey(name: 'stadium_id') int stadiumId,
      @JsonKey(name: 'payment_type') String paymentType});
}

/// @nodoc
class _$CreateBookingRequestCopyWithImpl<$Res,
        $Val extends CreateBookingRequest>
    implements $CreateBookingRequestCopyWith<$Res> {
  _$CreateBookingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadiumSlotId = null,
    Object? date = null,
    Object? stadiumId = null,
    Object? paymentType = null,
  }) {
    return _then(_value.copyWith(
      stadiumSlotId: null == stadiumSlotId
          ? _value.stadiumSlotId
          : stadiumSlotId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      stadiumId: null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBookingRequestImplCopyWith<$Res>
    implements $CreateBookingRequestCopyWith<$Res> {
  factory _$$CreateBookingRequestImplCopyWith(_$CreateBookingRequestImpl value,
          $Res Function(_$CreateBookingRequestImpl) then) =
      __$$CreateBookingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'stadium_slot_id') int stadiumSlotId,
      String date,
      @JsonKey(name: 'stadium_id') int stadiumId,
      @JsonKey(name: 'payment_type') String paymentType});
}

/// @nodoc
class __$$CreateBookingRequestImplCopyWithImpl<$Res>
    extends _$CreateBookingRequestCopyWithImpl<$Res, _$CreateBookingRequestImpl>
    implements _$$CreateBookingRequestImplCopyWith<$Res> {
  __$$CreateBookingRequestImplCopyWithImpl(_$CreateBookingRequestImpl _value,
      $Res Function(_$CreateBookingRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stadiumSlotId = null,
    Object? date = null,
    Object? stadiumId = null,
    Object? paymentType = null,
  }) {
    return _then(_$CreateBookingRequestImpl(
      stadiumSlotId: null == stadiumSlotId
          ? _value.stadiumSlotId
          : stadiumSlotId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      stadiumId: null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookingRequestImpl implements _CreateBookingRequest {
  const _$CreateBookingRequestImpl(
      {@JsonKey(name: 'stadium_slot_id') required this.stadiumSlotId,
      required this.date,
      @JsonKey(name: 'stadium_id') required this.stadiumId,
      @JsonKey(name: 'payment_type') required this.paymentType});

  factory _$CreateBookingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBookingRequestImplFromJson(json);

  @override
  @JsonKey(name: 'stadium_slot_id')
  final int stadiumSlotId;
  @override
  final String date;
// "YYYY-M-D"
  @override
  @JsonKey(name: 'stadium_id')
  final int stadiumId;
  @override
  @JsonKey(name: 'payment_type')
  final String paymentType;

  @override
  String toString() {
    return 'CreateBookingRequest(stadiumSlotId: $stadiumSlotId, date: $date, stadiumId: $stadiumId, paymentType: $paymentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookingRequestImpl &&
            (identical(other.stadiumSlotId, stadiumSlotId) ||
                other.stadiumSlotId == stadiumSlotId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.stadiumId, stadiumId) ||
                other.stadiumId == stadiumId) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stadiumSlotId, date, stadiumId, paymentType);

  /// Create a copy of CreateBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookingRequestImplCopyWith<_$CreateBookingRequestImpl>
      get copyWith =>
          __$$CreateBookingRequestImplCopyWithImpl<_$CreateBookingRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBookingRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateBookingRequest implements CreateBookingRequest {
  const factory _CreateBookingRequest(
          {@JsonKey(name: 'stadium_slot_id') required final int stadiumSlotId,
          required final String date,
          @JsonKey(name: 'stadium_id') required final int stadiumId,
          @JsonKey(name: 'payment_type') required final String paymentType}) =
      _$CreateBookingRequestImpl;

  factory _CreateBookingRequest.fromJson(Map<String, dynamic> json) =
      _$CreateBookingRequestImpl.fromJson;

  @override
  @JsonKey(name: 'stadium_slot_id')
  int get stadiumSlotId;
  @override
  String get date; // "YYYY-M-D"
  @override
  @JsonKey(name: 'stadium_id')
  int get stadiumId;
  @override
  @JsonKey(name: 'payment_type')
  String get paymentType;

  /// Create a copy of CreateBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBookingRequestImplCopyWith<_$CreateBookingRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
