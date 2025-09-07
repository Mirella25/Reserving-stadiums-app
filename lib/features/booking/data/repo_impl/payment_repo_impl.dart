// payment_repository_impl.dart
import 'package:reserving_stadiums_app/core/result/result.dart';
import '../../domain/entities/payment_entity.dart';
import '../../domain/repositories/payment_repository.dart';
import '../datasources/payment_remote_datasource.dart';
import '../models/response/start_payment_response.dart'; // StartPaymentData
import '../../domain/entities/payment_entity.dart';       // فيه StartPaymentMapper ext

class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDataSource remote;
  PaymentRepositoryImpl(this.remote);

  @override
  Future<Result<StartPaymentEntity>> start({
    required int bookingId,
    required num amount,
    String? paymentMethod,
  }) async {
    final res = await remote.startPayment(
      bookingId: bookingId,
      amount: amount,
      paymentMethod: paymentMethod,
    );

    if (res is Success<StartPaymentData>) {
      return Success<StartPaymentEntity>(data: res.data.toEntity());
    } else if (res is Error<StartPaymentData>) {
      // res.e قد يكون String أو Object حسب تعريفك؛ حوّله لنص
      return Error<StartPaymentEntity>(e: res.e?.toString());
    } else {
      return ConnectionError<StartPaymentEntity>();
    }
  }
}
