abstract class PaymentState {}

class PaymentInitial extends PaymentState {}

class PaymentLoading extends PaymentState {}

class PaymentSheetReady extends PaymentState {
  final String clientSecret;
  PaymentSheetReady(this.clientSecret);
}

class PaymentSuccess extends PaymentState {}

class PaymentFailure extends PaymentState {
  final String message;
  PaymentFailure(this.message);
}

class OnboardingStarted extends PaymentState {
  final String url;
  OnboardingStarted(this.url);
}

class OnboardingStatus extends PaymentState {
  final bool payoutsEnabled;
  OnboardingStatus(this.payoutsEnabled);
}
