// entities

import '../../data/models/response/start_payment_response.dart';

class StartPaymentEntity {
  final String clientSecret;
  final PaymentEntity payment;
  final StartPaymentBooking booking;
  StartPaymentEntity({
    required this.clientSecret,
    required this.payment,
    required this.booking,
  });
}

class PaymentEntity {
  final int id;
  final int bookingId;
  final num amount;          // ← كان String
  final String status;
  final String transactionId;
  final String expiresAtIso;
  PaymentEntity({
    required this.id,
    required this.bookingId,
    required this.amount,
    required this.status,
    required this.transactionId,
    required this.expiresAtIso,
  });
}

class StartPaymentBooking {
  final int id;
  final int stadiumSlotId;
  final int stadiumId;
  final int userId;
  final String date;
  final String paymentType;
  final num amountPaid;      // ← كان String
  final String status;
  final String? paymentStatus; // خياريًا خليه nullable
  StartPaymentBooking({
    required this.id,
    required this.stadiumSlotId,
    required this.stadiumId,
    required this.userId,
    required this.date,
    required this.paymentType,
    required this.amountPaid,
    required this.status,
    required this.paymentStatus,
  });
}

// mappers

extension StartPaymentMapper on StartPaymentData {
  StartPaymentEntity toEntity() => StartPaymentEntity(
    clientSecret: clientSecret,
    payment: payment.toEntity(),
    booking: booking.toEntity(),
  );
}

extension _PaymentModelX on PaymentDto {
  PaymentEntity toEntity() => PaymentEntity(
    id: id,
    bookingId: bookingId,
    amount: amount,               // PaymentDto.amount = num (with _toNum)
    status: status,
    transactionId: transactionId,
    expiresAtIso: expiresAt,
  );
}

extension _BookingModelX on BookingDto {
  StartPaymentBooking toEntity() => StartPaymentBooking(
    id: id,
    stadiumSlotId: stadiumSlotId,
    stadiumId: stadiumId,
    userId: userId,
    date: date,
    paymentType: paymentType,
    amountPaid: amountPaid,       // BookingDto.amountPaid = num (with _toNum)
    status: status,
    paymentStatus: paymentStatus, // ممكن ترجع null ببعض الحالات
  );
}
