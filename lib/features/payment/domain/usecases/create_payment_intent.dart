import '../repositories/payment_repository.dart';

class CreatePaymentIntent {
  final PaymentRepository repository;
  CreatePaymentIntent(this.repository);

  Future<Map<String, dynamic>> call(
      {required int amount, required String currency}) {
    return repository.createPaymentIntent(amount: amount, currency: currency);
  }
}
