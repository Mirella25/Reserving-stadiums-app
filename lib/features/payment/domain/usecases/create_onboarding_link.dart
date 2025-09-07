import '../repositories/payment_repository.dart';

class CreateOnboardingLink {
  final PaymentRepository repository;
  CreateOnboardingLink(this.repository);

  Future<Map<String, dynamic>> call() {
    return repository.createOnboardingLink();
  }
}
