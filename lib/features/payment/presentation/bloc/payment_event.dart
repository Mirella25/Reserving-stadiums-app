abstract class PaymentEvent {}

class InitPaymentSheetEvent extends PaymentEvent {
  final int amount;
  final String currency;
  InitPaymentSheetEvent({required this.amount, required this.currency});
}

class PresentPaymentSheetEvent extends PaymentEvent {}

class StartOnboardingEvent extends PaymentEvent {}

class CheckOwnerStatusEvent extends PaymentEvent {}
