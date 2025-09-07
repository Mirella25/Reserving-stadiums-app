abstract class PaymentRepository {
  Future<Map<String, dynamic>> createPaymentIntent(
      {required int amount, required String currency});
  Future<Map<String, dynamic>> createOnboardingLink();
  Future<Map<String, dynamic>> checkOwnerStatus();
}
