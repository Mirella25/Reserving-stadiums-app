import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_booking_request.freezed.dart';
part 'create_booking_request.g.dart';

@freezed
class CreateBookingRequest with _$CreateBookingRequest {
  const factory CreateBookingRequest({
    @JsonKey(name: 'stadium_slot_id') required int stadiumSlotId,
    required String date, // "YYYY-M-D"
    @JsonKey(name: 'stadium_id') required int stadiumId,
    @JsonKey(name: 'payment_type') required String paymentType,
  }) = _CreateBookingRequest;

  factory CreateBookingRequest.fromJson(Map<String, dynamic> json)
  => _$CreateBookingRequestFromJson(json);
}
