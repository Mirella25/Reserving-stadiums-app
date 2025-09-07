// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_payment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StartPaymentData _$StartPaymentDataFromJson(Map<String, dynamic> json) {
  return _StartPaymentData.fromJson(json);
}

/// @nodoc
mixin _$StartPaymentData {
  @JsonKey(name: 'booking')
  BookingDto get booking => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment')
  PaymentDto get payment => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_secret')
  String get clientSecret => throw _privateConstructorUsedError;

  /// Serializes this StartPaymentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StartPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartPaymentDataCopyWith<StartPaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartPaymentDataCopyWith<$Res> {
  factory $StartPaymentDataCopyWith(
          StartPaymentData value, $Res Function(StartPaymentData) then) =
      _$StartPaymentDataCopyWithImpl<$Res, StartPaymentData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'booking') BookingDto booking,
      @JsonKey(name: 'payment') PaymentDto payment,
      @JsonKey(name: 'client_secret') String clientSecret});

  $BookingDtoCopyWith<$Res> get booking;
  $PaymentDtoCopyWith<$Res> get payment;
}

/// @nodoc
class _$StartPaymentDataCopyWithImpl<$Res, $Val extends StartPaymentData>
    implements $StartPaymentDataCopyWith<$Res> {
  _$StartPaymentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
    Object? payment = null,
    Object? clientSecret = null,
  }) {
    return _then(_value.copyWith(
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as BookingDto,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentDto,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of StartPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingDtoCopyWith<$Res> get booking {
    return $BookingDtoCopyWith<$Res>(_value.booking, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
    });
  }

  /// Create a copy of StartPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentDtoCopyWith<$Res> get payment {
    return $PaymentDtoCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StartPaymentDataImplCopyWith<$Res>
    implements $StartPaymentDataCopyWith<$Res> {
  factory _$$StartPaymentDataImplCopyWith(_$StartPaymentDataImpl value,
          $Res Function(_$StartPaymentDataImpl) then) =
      __$$StartPaymentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'booking') BookingDto booking,
      @JsonKey(name: 'payment') PaymentDto payment,
      @JsonKey(name: 'client_secret') String clientSecret});

  @override
  $BookingDtoCopyWith<$Res> get booking;
  @override
  $PaymentDtoCopyWith<$Res> get payment;
}

/// @nodoc
class __$$StartPaymentDataImplCopyWithImpl<$Res>
    extends _$StartPaymentDataCopyWithImpl<$Res, _$StartPaymentDataImpl>
    implements _$$StartPaymentDataImplCopyWith<$Res> {
  __$$StartPaymentDataImplCopyWithImpl(_$StartPaymentDataImpl _value,
      $Res Function(_$StartPaymentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
    Object? payment = null,
    Object? clientSecret = null,
  }) {
    return _then(_$StartPaymentDataImpl(
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as BookingDto,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentDto,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StartPaymentDataImpl implements _StartPaymentData {
  const _$StartPaymentDataImpl(
      {@JsonKey(name: 'booking') required this.booking,
      @JsonKey(name: 'payment') required this.payment,
      @JsonKey(name: 'client_secret') required this.clientSecret});

  factory _$StartPaymentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartPaymentDataImplFromJson(json);

  @override
  @JsonKey(name: 'booking')
  final BookingDto booking;
  @override
  @JsonKey(name: 'payment')
  final PaymentDto payment;
  @override
  @JsonKey(name: 'client_secret')
  final String clientSecret;

  @override
  String toString() {
    return 'StartPaymentData(booking: $booking, payment: $payment, clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartPaymentDataImpl &&
            (identical(other.booking, booking) || other.booking == booking) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, booking, payment, clientSecret);

  /// Create a copy of StartPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartPaymentDataImplCopyWith<_$StartPaymentDataImpl> get copyWith =>
      __$$StartPaymentDataImplCopyWithImpl<_$StartPaymentDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StartPaymentDataImplToJson(
      this,
    );
  }
}

abstract class _StartPaymentData implements StartPaymentData {
  const factory _StartPaymentData(
          {@JsonKey(name: 'booking') required final BookingDto booking,
          @JsonKey(name: 'payment') required final PaymentDto payment,
          @JsonKey(name: 'client_secret') required final String clientSecret}) =
      _$StartPaymentDataImpl;

  factory _StartPaymentData.fromJson(Map<String, dynamic> json) =
      _$StartPaymentDataImpl.fromJson;

  @override
  @JsonKey(name: 'booking')
  BookingDto get booking;
  @override
  @JsonKey(name: 'payment')
  PaymentDto get payment;
  @override
  @JsonKey(name: 'client_secret')
  String get clientSecret;

  /// Create a copy of StartPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartPaymentDataImplCopyWith<_$StartPaymentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingDto _$BookingDtoFromJson(Map<String, dynamic> json) {
  return _BookingDto.fromJson(json);
}

/// @nodoc
mixin _$BookingDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stadium_slot_id')
  int get stadiumSlotId => throw _privateConstructorUsedError;
  @JsonKey(name: 'stadium_id')
  int get stadiumId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  String get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_paid', fromJson: _toNum)
  num get amountPaid => throw _privateConstructorUsedError; // 👈
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String? get paymentStatus => throw _privateConstructorUsedError;

  /// Serializes this BookingDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingDtoCopyWith<BookingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDtoCopyWith<$Res> {
  factory $BookingDtoCopyWith(
          BookingDto value, $Res Function(BookingDto) then) =
      _$BookingDtoCopyWithImpl<$Res, BookingDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'stadium_slot_id') int stadiumSlotId,
      @JsonKey(name: 'stadium_id') int stadiumId,
      String date,
      @JsonKey(name: 'payment_type') String paymentType,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'amount_paid', fromJson: _toNum) num amountPaid,
      String status,
      @JsonKey(name: 'payment_status') String? paymentStatus});
}

/// @nodoc
class _$BookingDtoCopyWithImpl<$Res, $Val extends BookingDto>
    implements $BookingDtoCopyWith<$Res> {
  _$BookingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stadiumSlotId = null,
    Object? stadiumId = null,
    Object? date = null,
    Object? paymentType = null,
    Object? userId = null,
    Object? amountPaid = null,
    Object? status = null,
    Object? paymentStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stadiumSlotId: null == stadiumSlotId
          ? _value.stadiumSlotId
          : stadiumSlotId // ignore: cast_nullable_to_non_nullable
              as int,
      stadiumId: null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      amountPaid: null == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingDtoImplCopyWith<$Res>
    implements $BookingDtoCopyWith<$Res> {
  factory _$$BookingDtoImplCopyWith(
          _$BookingDtoImpl value, $Res Function(_$BookingDtoImpl) then) =
      __$$BookingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'stadium_slot_id') int stadiumSlotId,
      @JsonKey(name: 'stadium_id') int stadiumId,
      String date,
      @JsonKey(name: 'payment_type') String paymentType,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'amount_paid', fromJson: _toNum) num amountPaid,
      String status,
      @JsonKey(name: 'payment_status') String? paymentStatus});
}

/// @nodoc
class __$$BookingDtoImplCopyWithImpl<$Res>
    extends _$BookingDtoCopyWithImpl<$Res, _$BookingDtoImpl>
    implements _$$BookingDtoImplCopyWith<$Res> {
  __$$BookingDtoImplCopyWithImpl(
      _$BookingDtoImpl _value, $Res Function(_$BookingDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stadiumSlotId = null,
    Object? stadiumId = null,
    Object? date = null,
    Object? paymentType = null,
    Object? userId = null,
    Object? amountPaid = null,
    Object? status = null,
    Object? paymentStatus = freezed,
  }) {
    return _then(_$BookingDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stadiumSlotId: null == stadiumSlotId
          ? _value.stadiumSlotId
          : stadiumSlotId // ignore: cast_nullable_to_non_nullable
              as int,
      stadiumId: null == stadiumId
          ? _value.stadiumId
          : stadiumId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      amountPaid: null == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingDtoImpl implements _BookingDto {
  const _$BookingDtoImpl(
      {required this.id,
      @JsonKey(name: 'stadium_slot_id') required this.stadiumSlotId,
      @JsonKey(name: 'stadium_id') required this.stadiumId,
      required this.date,
      @JsonKey(name: 'payment_type') required this.paymentType,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'amount_paid', fromJson: _toNum) required this.amountPaid,
      required this.status,
      @JsonKey(name: 'payment_status') this.paymentStatus});

  factory _$BookingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'stadium_slot_id')
  final int stadiumSlotId;
  @override
  @JsonKey(name: 'stadium_id')
  final int stadiumId;
  @override
  final String date;
  @override
  @JsonKey(name: 'payment_type')
  final String paymentType;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'amount_paid', fromJson: _toNum)
  final num amountPaid;
// 👈
  @override
  final String status;
  @override
  @JsonKey(name: 'payment_status')
  final String? paymentStatus;

  @override
  String toString() {
    return 'BookingDto(id: $id, stadiumSlotId: $stadiumSlotId, stadiumId: $stadiumId, date: $date, paymentType: $paymentType, userId: $userId, amountPaid: $amountPaid, status: $status, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stadiumSlotId, stadiumSlotId) ||
                other.stadiumSlotId == stadiumSlotId) &&
            (identical(other.stadiumId, stadiumId) ||
                other.stadiumId == stadiumId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, stadiumSlotId, stadiumId,
      date, paymentType, userId, amountPaid, status, paymentStatus);

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDtoImplCopyWith<_$BookingDtoImpl> get copyWith =>
      __$$BookingDtoImplCopyWithImpl<_$BookingDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingDtoImplToJson(
      this,
    );
  }
}

abstract class _BookingDto implements BookingDto {
  const factory _BookingDto(
          {required final int id,
          @JsonKey(name: 'stadium_slot_id') required final int stadiumSlotId,
          @JsonKey(name: 'stadium_id') required final int stadiumId,
          required final String date,
          @JsonKey(name: 'payment_type') required final String paymentType,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'amount_paid', fromJson: _toNum)
          required final num amountPaid,
          required final String status,
          @JsonKey(name: 'payment_status') final String? paymentStatus}) =
      _$BookingDtoImpl;

  factory _BookingDto.fromJson(Map<String, dynamic> json) =
      _$BookingDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'stadium_slot_id')
  int get stadiumSlotId;
  @override
  @JsonKey(name: 'stadium_id')
  int get stadiumId;
  @override
  String get date;
  @override
  @JsonKey(name: 'payment_type')
  String get paymentType;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'amount_paid', fromJson: _toNum)
  num get amountPaid; // 👈
  @override
  String get status;
  @override
  @JsonKey(name: 'payment_status')
  String? get paymentStatus;

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingDtoImplCopyWith<_$BookingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentDto _$PaymentDtoFromJson(Map<String, dynamic> json) {
  return _PaymentDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stadium_slot_booking_id')
  int get bookingId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toNum)
  num get amount => throw _privateConstructorUsedError; // 👈
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  String get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  String get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this PaymentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentDtoCopyWith<PaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDtoCopyWith<$Res> {
  factory $PaymentDtoCopyWith(
          PaymentDto value, $Res Function(PaymentDto) then) =
      _$PaymentDtoCopyWithImpl<$Res, PaymentDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'stadium_slot_booking_id') int bookingId,
      @JsonKey(fromJson: _toNum) num amount,
      String status,
      @JsonKey(name: 'transaction_id') String transactionId,
      @JsonKey(name: 'expires_at') String expiresAt});
}

/// @nodoc
class _$PaymentDtoCopyWithImpl<$Res, $Val extends PaymentDto>
    implements $PaymentDtoCopyWith<$Res> {
  _$PaymentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? amount = null,
    Object? status = null,
    Object? transactionId = null,
    Object? expiresAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDtoImplCopyWith<$Res>
    implements $PaymentDtoCopyWith<$Res> {
  factory _$$PaymentDtoImplCopyWith(
          _$PaymentDtoImpl value, $Res Function(_$PaymentDtoImpl) then) =
      __$$PaymentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'stadium_slot_booking_id') int bookingId,
      @JsonKey(fromJson: _toNum) num amount,
      String status,
      @JsonKey(name: 'transaction_id') String transactionId,
      @JsonKey(name: 'expires_at') String expiresAt});
}

/// @nodoc
class __$$PaymentDtoImplCopyWithImpl<$Res>
    extends _$PaymentDtoCopyWithImpl<$Res, _$PaymentDtoImpl>
    implements _$$PaymentDtoImplCopyWith<$Res> {
  __$$PaymentDtoImplCopyWithImpl(
      _$PaymentDtoImpl _value, $Res Function(_$PaymentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? amount = null,
    Object? status = null,
    Object? transactionId = null,
    Object? expiresAt = null,
  }) {
    return _then(_$PaymentDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDtoImpl implements _PaymentDto {
  const _$PaymentDtoImpl(
      {required this.id,
      @JsonKey(name: 'stadium_slot_booking_id') required this.bookingId,
      @JsonKey(fromJson: _toNum) required this.amount,
      required this.status,
      @JsonKey(name: 'transaction_id') required this.transactionId,
      @JsonKey(name: 'expires_at') required this.expiresAt});

  factory _$PaymentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'stadium_slot_booking_id')
  final int bookingId;
  @override
  @JsonKey(fromJson: _toNum)
  final num amount;
// 👈
  @override
  final String status;
  @override
  @JsonKey(name: 'transaction_id')
  final String transactionId;
  @override
  @JsonKey(name: 'expires_at')
  final String expiresAt;

  @override
  String toString() {
    return 'PaymentDto(id: $id, bookingId: $bookingId, amount: $amount, status: $status, transactionId: $transactionId, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, bookingId, amount, status, transactionId, expiresAt);

  /// Create a copy of PaymentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDtoImplCopyWith<_$PaymentDtoImpl> get copyWith =>
      __$$PaymentDtoImplCopyWithImpl<_$PaymentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDtoImplToJson(
      this,
    );
  }
}

abstract class _PaymentDto implements PaymentDto {
  const factory _PaymentDto(
      {required final int id,
      @JsonKey(name: 'stadium_slot_booking_id') required final int bookingId,
      @JsonKey(fromJson: _toNum) required final num amount,
      required final String status,
      @JsonKey(name: 'transaction_id') required final String transactionId,
      @JsonKey(name: 'expires_at')
      required final String expiresAt}) = _$PaymentDtoImpl;

  factory _PaymentDto.fromJson(Map<String, dynamic> json) =
      _$PaymentDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'stadium_slot_booking_id')
  int get bookingId;
  @override
  @JsonKey(fromJson: _toNum)
  num get amount; // 👈
  @override
  String get status;
  @override
  @JsonKey(name: 'transaction_id')
  String get transactionId;
  @override
  @JsonKey(name: 'expires_at')
  String get expiresAt;

  /// Create a copy of PaymentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentDtoImplCopyWith<_$PaymentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
