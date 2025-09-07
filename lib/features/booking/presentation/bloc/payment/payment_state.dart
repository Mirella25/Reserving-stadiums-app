import 'package:equatable/equatable.dart';

abstract class PaymentState extends Equatable {
  const PaymentState();
  @override
  List<Object?> get props => [];
}

class PaymentInitial extends PaymentState {}

class PaymentLoading extends PaymentState {}

class PaymentInitiated extends PaymentState {
  final String clientSecret;
  final String transactionId; // pi_...
  final int bookingId;
  final num amount;

  const PaymentInitiated({
    required this.clientSecret,
    required this.transactionId,
    required this.bookingId,
    required this.amount,
  });

  @override
  List<Object?> get props => [clientSecret, transactionId, bookingId, amount];
}

class PaymentSuccess extends PaymentState {
  final String message;
  const PaymentSuccess(this.message);
  @override
  List<Object?> get props => [message];
}

class PaymentFailure extends PaymentState {
  final String message;
  const PaymentFailure(this.message);
  @override
  List<Object?> get props => [message];
}
