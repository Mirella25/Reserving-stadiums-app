import 'package:reserving_stadiums_app/features/payment/data/datasources/payment_remote.dart';

import '../../domain/repositories/payment_repository.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDataSource remoteDataSource;
  PaymentRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Map<String, dynamic>> createPaymentIntent(
      {required int amount, required String currency}) {
    return remoteDataSource.createPaymentIntent(
        amount: amount, currency: currency);
  }

  @override
  Future<Map<String, dynamic>> createOnboardingLink() {
    return remoteDataSource.createOnboardingLink();
  }

  @override
  Future<Map<String, dynamic>> checkOwnerStatus() {
    return remoteDataSource.checkOwnerStatus();
  }
}
