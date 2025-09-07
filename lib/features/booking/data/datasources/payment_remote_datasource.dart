// payment_remote_datasource.dart
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/core/network/api_client.dart';
import '../models/response/start_payment_response.dart'; // فيه StartPaymentData

class PaymentRemoteDataSource {
  final DioClient dioClient;
  PaymentRemoteDataSource(this.dioClient);

  Future<Result<StartPaymentData>> startPayment({
    required int bookingId,
    required num amount,
    String? token,
    String? paymentMethod,
  }) {
    final body = <String, dynamic>{
      'stadium_slot_booking_id': bookingId,
      'amount': amount,
    };
    if (paymentMethod != null) body['payment_method'] = paymentMethod;

    return dioClient.callApi<StartPaymentData>(
      endpoint: '/Booking/pay',
      method: 'POST',
      data: body,
      requiresAuth: true,
      token: token,
      // 👇 نفك "data" من الغلاف ونبني StartPaymentData
      fromJson: (json) =>
          StartPaymentData.fromJson((json['data'] as Map<String, dynamic>)),
    );
  }

  Future<Result<bool>> forceComplete({
    required String transactionId,
    required int bookingId,
    required num amount,
    String? token,
  }) {
    return dioClient.callApi<bool>(
      endpoint: '/pay/force-complete',
      method: 'POST',
      data: {
        'transaction_id': transactionId,
        'booking_id': bookingId,
        'amount': amount,
      },
      requiresAuth: true,
      token: token,
      fromJson: (_) => true,
    );
  }
}
