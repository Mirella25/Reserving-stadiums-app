// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingResponseModelImpl _$$BookingResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      stadiumSlotId: (json['stadium_slot_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      date: json['date'] as String?,
      stadiumId: json['stadium_id'],
      paymentType: json['payment_type'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$BookingResponseModelImplToJson(
        _$BookingResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stadium_slot_id': instance.stadiumSlotId,
      'user_id': instance.userId,
      'date': instance.date,
      'stadium_id': instance.stadiumId,
      'payment_type': instance.paymentType,
      'status': instance.status,
    };
