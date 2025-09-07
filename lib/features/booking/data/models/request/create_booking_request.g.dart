// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBookingRequestImpl _$$CreateBookingRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBookingRequestImpl(
      stadiumSlotId: (json['stadium_slot_id'] as num).toInt(),
      date: json['date'] as String,
      stadiumId: (json['stadium_id'] as num).toInt(),
      paymentType: json['payment_type'] as String,
    );

Map<String, dynamic> _$$CreateBookingRequestImplToJson(
        _$CreateBookingRequestImpl instance) =>
    <String, dynamic>{
      'stadium_slot_id': instance.stadiumSlotId,
      'date': instance.date,
      'stadium_id': instance.stadiumId,
      'payment_type': instance.paymentType,
    };
