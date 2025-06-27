part of 'register_bloc.dart';

@immutable
sealed class RegisterEvent {}

class TogglePasswordVisibility extends RegisterEvent {}

class TogglePasswordConfirmVisibility extends RegisterEvent {}
