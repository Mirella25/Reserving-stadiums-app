import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/result/result.dart';
import '../../../../domain/entities/login_entity.dart';
import '../../../../domain/usecases/google_login_usecase.dart';
import '../../../../domain/usecases/login_usecase.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  final GoogleLoginUseCase loginWithGoogleUseCase;

  LoginBloc(this.loginUseCase, this.loginWithGoogleUseCase)
      : super(const LoginState()) {
    on<TogglePasswordVisibility>((event, emit) {
      emit(state.copyWith(isPasswordObscured: !state.isPasswordObscured));
    });

    on<LoginSubmitted>(_onLoginSubmitted);
    on<GoogleLoginSubmitted>(_onGoogleLoginSubmitted);
  }

  Future<void> _onLoginSubmitted(
      LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    final result = await loginUseCase.execute(event.email, event.password);

    if (result is Success<LoginEntity>) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        loginEntity: result.data,
      ));
    } else if (result is Error<LoginEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: result.e.toString(),
        isSuccess: false,
      ));
    }
  }

  Future<void> _onGoogleLoginSubmitted(
      GoogleLoginSubmitted event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    final result = await loginWithGoogleUseCase.execute(event.idToken);

    if (result is Success<LoginEntity>) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        loginEntity: result.data,
      ));
    } else if (result is Error<LoginEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: result.e.toString(),
        isSuccess: false,
      ));
    }
  }
}
