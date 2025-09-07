import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/booking_entity.dart';
part 'booking_response_model.freezed.dart';
part 'booking_response_model.g.dart';
@freezed
class BookingResponseModel with _$BookingResponseModel {
  const factory BookingResponseModel({
    int? id,
    @JsonKey(name: 'stadium_slot_id') int? stadiumSlotId,
    @JsonKey(name: 'user_id') int? userId,
    String? date,
    @JsonKey(name: 'stadium_id') dynamic stadiumId,
    @JsonKey(name: 'payment_type') String? paymentType,
    String? status, // بعض الـ APIs ممكن ترجعه null
  }) = _BookingResponseModel;

  factory BookingResponseModel.fromJson(Map<String, dynamic> json)
  => _$BookingResponseModelFromJson(json);
}

extension BookingResponseModelX on BookingResponseModel {
  BookingEntity toEntity() => BookingEntity(
    id: id ?? 0,
    stadiumSlotId: stadiumSlotId ?? 0,
    userId: userId ?? 0,
    date: date ?? '',
    stadiumId: stadiumId is int ? stadiumId : int.tryParse('$stadiumId') ?? 0,
    status: paymentType ?? '', // أو status ?? ''
  );
}
