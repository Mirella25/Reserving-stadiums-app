import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserving_stadiums_app/features/auth/data/models/request/forget_password/reset_password_submit_request.dart';
import '../../../data/models/request/forget_password/reset_password_request.dart';

import '../../../data/models/response/forget_pass/base_response.dart';
import '../../../domain/usecases/submit_reset_password_usecase.dart';
import 'reset_password_event.dart';
import 'reset_password_state.dart';
import '../../../../../core/result/result.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final ResetPasswordUseCase useCase;

  ResetPasswordBloc(this.useCase) : super(const ResetPasswordState()) {
    on<ResetPasswordSubmitEvent>(_onResetPassword);
  }

  Future<void> _onResetPassword(
      ResetPasswordSubmitEvent event, Emitter<ResetPasswordState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, successMessage: null));

    final request = ResetPasswordSubmitRequest(
      token: event.token,
      email: event.email,
      password: event.password,
      passwordConfirmation: event.confirmPassword,
    );

    final result = await useCase(request);

    if (result is Success<BaseResponse>) {
      emit(state.copyWith(successMessage: result.data.message, isLoading: false));
    } else if (result is Error<BaseResponse>) {
      emit(state.copyWith(errorMessage: result.e.toString(), isLoading: false));
    }
  }
}
