import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  LoginBloc(
      this.loginUseCase,
      this.loginWithGoogleUseCase,
      this.localDataSource,
      ) : super(const LoginState()) {
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
      final loginEntity = result.data;
      final isVerified = loginEntity.user.emailVerifiedAt != null;

      // ✅ خزن عبر AuthLocalDataSource (يوحّد المفاتيح: access_token, user_id, is_verified, role...)
      await localDataSource.cacheToken(loginEntity.token);
      await localDataSource.cacheUserId(loginEntity.user.id);
      await localDataSource.cacheIsVerified(isVerified);

      // (اختياري) خزن profileId إذا موجود
      if (loginEntity.profileId != null) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt('profile_id', loginEntity.profileId!);
      }

      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        loginEntity: loginEntity,
      ));
    } else if (result is Error<LoginEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: result.e.toString(),
        isSuccess: false,
      ));
    } else if (result is ConnectionError<LoginEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: 'Connection error',
        isSuccess: false,
      ));
    }
  }

  Future<void> _onGoogleLoginSubmitted(
      GoogleLoginSubmitted event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    final result = await loginWithGoogleUseCase.execute(event.idToken);

    if (result is Success<LoginEntity>) {
      final loginEntity = result.data;
      final isVerified = loginEntity.user.emailVerifiedAt != null;

      if (!isVerified) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: false,
          errorMessage: 'Email is not verified',
        ));
        return;
      }

      // ✅ نفس التوحيد
      await localDataSource.cacheToken(loginEntity.token);
      await localDataSource.cacheUserId(loginEntity.user.id);
      await localDataSource.cacheIsVerified(true);

      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        loginEntity: loginEntity,
      ));
    } else if (result is Error<LoginEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: result.e.toString(),
        isSuccess: false,
      ));
    } else if (result is ConnectionError<LoginEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: 'Connection error',
        isSuccess: false,
      ));
    }
  }

}
