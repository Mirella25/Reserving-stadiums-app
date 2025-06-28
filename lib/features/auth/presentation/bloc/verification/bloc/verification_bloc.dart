import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'verification_event.dart';
part 'verification_state.dart';

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  VerificationBloc() : super(VerificationState()) {
    on<PinChanged>((event, emit) {
      emit(state.copyWith(code: event.code, isError: false, isSuccess: false));
    });

    on<ValidatePin>((event, emit) {
      final valid = state.code == '1234';

      if (valid) {
        emit(state.copyWith(isSuccess: true, isError: false));
      } else {
        emit(state.copyWith(isError: true, isSuccess: false));
      }
    });
  }
}
