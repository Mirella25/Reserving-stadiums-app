part of 'verification_bloc.dart';

@immutable
sealed class VerificationEvent {}

class PinChanged extends VerificationEvent {
  final String code;
  PinChanged(this.code);
}

class ValidatePin extends VerificationEvent {}
