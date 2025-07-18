import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/domain/entities/register_entity.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/register_usecase.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUsecase registerUsecase;
  RegisterBloc(this.registerUsecase) : super(const RegisterState()) {
    on<TogglePasswordVisibility>((event, emit) {
      emit(state.copyWith(isPasswordObscured: !state.isPasswordObscured));
    });
    on<TogglePasswordConfirmVisibility>((event, emit) {
      emit(state.copyWith(
          isPasswordConfirmObscured: !state.isPasswordConfirmObscured));
    });
    on<RegisterSubmitted>(_onRegisterSubmitted);
  }

  FutureOr<void> _onRegisterSubmitted(
      RegisterSubmitted event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));
    final result = await registerUsecase.execute(
        event.email, event.role, event.password, event.confirmPassword);
    if (result is Success<RegisterEntity>) {
      emit(state.copyWith(
          isLoading: false, isSuccess: true, registerEntity: result.data,errorMessage: null));
    } else if (result is Error<RegisterEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: result.e.toString(),
        isSuccess: false,
      ));
    }
  }
}
