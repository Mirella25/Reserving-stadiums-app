abstract class PaymentRemoteDataSource {
  Future<Map<String, dynamic>> createPaymentIntent(
      {required int amount, required String currency});
  Future<Map<String, dynamic>> createOnboardingLink();
  Future<Map<String, dynamic>> checkOwnerStatus();
}

class MockPaymentRemoteDataSource implements PaymentRemoteDataSource {
  bool simulateComplete = true;

  @override
  Future<Map<String, dynamic>> createPaymentIntent(
      {required int amount, required String currency}) async {
    await Future.delayed(Duration(milliseconds: 400));
    return {
      'client_secret': 'pi_mock_client_secret_12345',
      'id': 'pi_mock_123'
    };
  }

  @override
  Future<Map<String, dynamic>> createOnboardingLink() async {
    await Future.delayed(Duration(milliseconds: 300));
    return {'url': 'https://example.com/mock-onboarding?account=acct_mock_123'};
  }

  @override
  Future<Map<String, dynamic>> checkOwnerStatus() async {
    await Future.delayed(Duration(milliseconds: 200));
    return {'payouts_enabled': simulateComplete};
  }
}
