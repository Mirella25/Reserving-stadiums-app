import '../../../../core/result/result.dart';
import '../entities/payment_entity.dart';

abstract class PaymentRepository {
  Future<Result<StartPaymentEntity>> start({
    required int bookingId,
    required num amount,
    String? paymentMethod, // اختياري (LOCAL فقط)
  });
}