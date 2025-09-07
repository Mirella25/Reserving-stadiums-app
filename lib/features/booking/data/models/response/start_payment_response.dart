import 'package:freezed_annotation/freezed_annotation.dart';
part 'start_payment_response.freezed.dart';
part 'start_payment_response.g.dart';

num _toNum(dynamic v) {
  if (v is num) return v;
  if (v is String) return num.tryParse(v) ?? 0;
  return 0;
}

@freezed
class StartPaymentData with _$StartPaymentData {
  const factory StartPaymentData({
    @JsonKey(name: 'booking') required BookingDto booking,
    @JsonKey(name: 'payment') required PaymentDto payment,
    @JsonKey(name: 'client_secret') required String clientSecret,
  }) = _StartPaymentData;

  factory StartPaymentData.fromJson(Map<String, dynamic> json) =>
      _$StartPaymentDataFromJson(json);
}

@freezed
class BookingDto with _$BookingDto {
  const factory BookingDto({
    required int id,
    @JsonKey(name: 'stadium_slot_id') required int stadiumSlotId,
    @JsonKey(name: 'stadium_id') required int stadiumId,
    required String date,
    @JsonKey(name: 'payment_type') required String paymentType,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'amount_paid', fromJson: _toNum) required num amountPaid, // 👈
    required String status,
    @JsonKey(name: 'payment_status') String? paymentStatus,
  }) = _BookingDto;

  factory BookingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingDtoFromJson(json);
}

@freezed
class PaymentDto with _$PaymentDto {
  const factory PaymentDto({
    required int id,
    @JsonKey(name: 'stadium_slot_booking_id') required int bookingId,
    @JsonKey(fromJson: _toNum) required num amount, // 👈
    required String status,
    @JsonKey(name: 'transaction_id') required String transactionId,
    @JsonKey(name: 'expires_at') required String expiresAt,
  }) = _PaymentDto;

  factory PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDtoFromJson(json);
}
