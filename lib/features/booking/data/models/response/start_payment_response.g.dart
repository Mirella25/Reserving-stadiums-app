// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartPaymentDataImpl _$$StartPaymentDataImplFromJson(
        Map<String, dynamic> json) =>
    _$StartPaymentDataImpl(
      booking: BookingDto.fromJson(json['booking'] as Map<String, dynamic>),
      payment: PaymentDto.fromJson(json['payment'] as Map<String, dynamic>),
      clientSecret: json['client_secret'] as String,
    );

Map<String, dynamic> _$$StartPaymentDataImplToJson(
        _$StartPaymentDataImpl instance) =>
    <String, dynamic>{
      'booking': instance.booking,
      'payment': instance.payment,
      'client_secret': instance.clientSecret,
    };

_$BookingDtoImpl _$$BookingDtoImplFromJson(Map<String, dynamic> json) =>
    _$BookingDtoImpl(
      id: (json['id'] as num).toInt(),
      stadiumSlotId: (json['stadium_slot_id'] as num).toInt(),
      stadiumId: (json['stadium_id'] as num).toInt(),
      date: json['date'] as String,
      paymentType: json['payment_type'] as String,
      userId: (json['user_id'] as num).toInt(),
      amountPaid: _toNum(json['amount_paid']),
      status: json['status'] as String,
      paymentStatus: json['payment_status'] as String?,
    );

Map<String, dynamic> _$$BookingDtoImplToJson(_$BookingDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stadium_slot_id': instance.stadiumSlotId,
      'stadium_id': instance.stadiumId,
      'date': instance.date,
      'payment_type': instance.paymentType,
      'user_id': instance.userId,
      'amount_paid': instance.amountPaid,
      'status': instance.status,
      'payment_status': instance.paymentStatus,
    };

_$PaymentDtoImpl _$$PaymentDtoImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDtoImpl(
      id: (json['id'] as num).toInt(),
      bookingId: (json['stadium_slot_booking_id'] as num).toInt(),
      amount: _toNum(json['amount']),
      status: json['status'] as String,
      transactionId: json['transaction_id'] as String,
      expiresAt: json['expires_at'] as String,
    );

Map<String, dynamic> _$$PaymentDtoImplToJson(_$PaymentDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stadium_slot_booking_id': instance.bookingId,
      'amount': instance.amount,
      'status': instance.status,
      'transaction_id': instance.transactionId,
      'expires_at': instance.expiresAt,
    };
