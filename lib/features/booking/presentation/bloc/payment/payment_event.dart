import 'package:equatable/equatable.dart';

abstract class PaymentEvent extends Equatable {
  const PaymentEvent();
  @override
  List<Object?> get props => [];
}

class StartPayment extends PaymentEvent {
  final int bookingId;
  final num amount;
  const StartPayment({required this.bookingId, required this.amount});

  @override
  List<Object?> get props => [bookingId, amount];
}

class PaymentSheetCompleted extends PaymentEvent {
  final int bookingId;
  const PaymentSheetCompleted({required this.bookingId});

  @override
  List<Object?> get props => [bookingId];
}
