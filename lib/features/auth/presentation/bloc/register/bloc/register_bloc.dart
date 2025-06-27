import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<TogglePasswordVisibility>((event, emit) {
      emit(state.copyWith(isPasswordObscured: !state.isPasswordObscured));
    });
    on<TogglePasswordConfirmVisibility>((event, emit) {
      emit(state.copyWith(
          isPasswordConfirmObscured: !state.isPasswordConfirmObscured));
    });
  }
}
