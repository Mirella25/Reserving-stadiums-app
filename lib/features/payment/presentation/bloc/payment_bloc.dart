import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserving_stadiums_app/features/payment/domain/usecases/create_onboarding_link.dart';
import 'package:reserving_stadiums_app/features/payment/domain/usecases/create_payment_intent.dart';

import 'payment_event.dart';
import 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final CreatePaymentIntent createPaymentIntent;
  final CreateOnboardingLink createOnboardingLink;

  String? _clientSecret;

  PaymentBloc(
      {required this.createPaymentIntent, required this.createOnboardingLink})
      : super(PaymentInitial()) {
    on<InitPaymentSheetEvent>(_onInitPaymentSheet);
    on<PresentPaymentSheetEvent>(_onPresentPaymentSheet);
    on<StartOnboardingEvent>(_onStartOnboarding);
    on<CheckOwnerStatusEvent>(_onCheckOwnerStatus);
  }

  Future<void> _onInitPaymentSheet(
      InitPaymentSheetEvent e, Emitter emit) async {
    emit(PaymentLoading());
    try {
      final res =
          await createPaymentIntent(amount: e.amount, currency: e.currency);
      final clientSecret = res['client_secret'] as String?;
      if (clientSecret == null) throw ('no client_secret');
      _clientSecret = clientSecret;
      emit(PaymentSheetReady(clientSecret));
    } catch (err) {
      emit(PaymentFailure(err.toString()));
    }
  }

  Future<void> _onPresentPaymentSheet(
      PresentPaymentSheetEvent e, Emitter emit) async {
    emit(PaymentLoading());
    try {
      if (_clientSecret == null) throw ('PaymentSheet not initialized');
      emit(PaymentSheetReady(_clientSecret!));
    } catch (err) {
      emit(PaymentFailure(err.toString()));
    }
  }

  Future<void> _onStartOnboarding(StartOnboardingEvent e, Emitter emit) async {
    emit(PaymentLoading());
    try {
      final res = await createOnboardingLink();
      final url = res['url'] as String?;
      if (url == null) throw ('no url');
      emit(OnboardingStarted(url));
    } catch (err) {
      emit(PaymentFailure(err.toString()));
    }
  }

  Future<void> _onCheckOwnerStatus(
      CheckOwnerStatusEvent e, Emitter emit) async {
    emit(PaymentLoading());
    try {
      final repo = createOnboardingLink;

      emit(OnboardingStatus(true));
    } catch (err) {
      emit(PaymentFailure(err.toString()));
    }
  }
}
