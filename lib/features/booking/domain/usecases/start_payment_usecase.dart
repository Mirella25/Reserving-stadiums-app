import 'package:reserving_stadiums_app/core/result/result.dart';
import '../entities/payment_entity.dart';
import '../repositories/payment_repository.dart';

class StartPaymentUsecase {
  final PaymentRepository repository;
  StartPaymentUsecase(this.repository);

  Future<Result<StartPaymentEntity>> call({
    required int bookingId,
    required num amount,
    String? paymentMethod, // اختياري (LOCAL)
  }) {
    return repository.start(
      bookingId: bookingId,
      amount: amount,
      paymentMethod: paymentMethod,
    );
  }
}
