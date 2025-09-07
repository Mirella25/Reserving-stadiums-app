import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reserving_stadiums_app/core/constants/app_strings.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';

import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/booking/data/datasources/payment_remote_datasource.dart';

// Events & States
import 'payment_event.dart';
import 'payment_state.dart';

// DTO الذي يرجعه الريموت + الاكستنشن toEntity()
import 'package:reserving_stadiums_app/features/booking/data/models/response/start_payment_response.dart'
    show StartPaymentData;
import 'package:reserving_stadiums_app/features/booking/domain/entities/payment_entity.dart'
    show StartPaymentEntity, StartPaymentMapper;

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final PaymentRemoteDataSource _remote;
  final AuthLocalDataSource _local;
  final bool simulate;

  String? _tx;
  num? _amt;

  PaymentBloc(
      this._remote,
      this._local, {
        this.simulate = AppConstants.paymentSimulate,
      }) : super(PaymentInitial()) {
    on<StartPayment>(_onStart);
    on<PaymentSheetCompleted>(_onSheetCompleted);
  }

  Future<void> _onStart(StartPayment e, Emitter<PaymentState> emit) async {
    emit(PaymentLoading());

    final token = await _local.getCachedToken();
    final Result<StartPaymentData> res = await _remote.startPayment(
      bookingId: e.bookingId,
      amount: e.amount,
      token: token,
    );

    if (res is Success<StartPaymentData>) {
      // DTO -> Entity
      final StartPaymentEntity entity = res.data.toEntity();

      final tx = entity.payment.transactionId;
      _tx = tx;
      _amt = e.amount;

      if (kDebugMode) {
        debugPrint('TX: $tx  AMOUNT: ${e.amount}');
      }

      emit(PaymentInitiated(
        clientSecret: entity.clientSecret,
        transactionId: tx,
        bookingId: e.bookingId,
        amount: e.amount,
      ));
    } else if (res is ConnectionError<StartPaymentData>) {
      emit(const PaymentFailure('Connection error'));
    } else if (res is Error<StartPaymentData>) {
      emit(PaymentFailure(res.e.toString()));

    } else {
      emit(const PaymentFailure('Unexpected result'));
    }
  }

  Future<void> _onSheetCompleted(
      PaymentSheetCompleted e, Emitter<PaymentState> emit) async {
    // بدون محاكاة: خلّي الويبهوك يحدّث الداتابيز
    if (!simulate) {
      emit(const PaymentSuccess('Payment confirmed. Waiting for webhook...'));
      return;
    }

    final tx = _tx;
    final amount = _amt;
    if (tx == null || amount == null) {
      emit(const PaymentFailure('Missing payment context'));
      return;
    }

    emit(PaymentLoading());

    final token = await _local.getCachedToken();
    final Result<bool> res = await _remote.forceComplete(
      transactionId: tx,
      bookingId: e.bookingId,
      amount: amount,
      token: token,
    );

    if (res is Success<bool>) {
      emit(const PaymentSuccess('Payment succeeded (simulated).'));
    } else if (res is ConnectionError<bool>) {
      emit(const PaymentFailure('Connection error'));
    }else if (res is Error<bool>) {
      emit(PaymentFailure(res.e.toString()));
    } else {
      emit(const PaymentFailure('Unexpected result'));
    }
  }
}
