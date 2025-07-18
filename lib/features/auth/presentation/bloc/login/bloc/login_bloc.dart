import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/result/result.dart';
import '../../../../data/datasources/auth_local_datasource.dart';
import '../../../../domain/entities/login_entity.dart';
import '../../../../domain/usecases/google_login_usecase.dart';
import '../../../../domain/usecases/login_usecase.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  final GoogleLoginUseCase loginWithGoogleUseCase;
  final AuthLocalDataSource localDataSource;
  LoginBloc(this.loginUseCase, this.loginWithGoogleUseCase, this.localDataSource)
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
      await localDataSource.cacheToken(result.data.token);
      await localDataSource.cacheIsVerified(result.data.user.emailVerifiedAt != null);
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
      print("❌ Google login failed. Error: ${result.e}");

    }
  }
}
