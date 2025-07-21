import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/result/result.dart';
import '../../../data/models/request/forget_password/reset_password_request.dart';

import '../../../data/models/response/forget_pass/base_response.dart';
import '../../../domain/usecases/reset_password_send_usecase.dart';
import 'forget_password_event.dart';
import 'forget_password_state.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  final SendResetLinkUseCase sendResetLinkUseCase;

  ForgetPasswordBloc(this.sendResetLinkUseCase)
      : super(const ForgetPasswordState()) {
    on<SendResetLinkEvent>(_onSendResetLink);
  }

  Future<void> _onSendResetLink(
    SendResetLinkEvent event,
    Emitter<ForgetPasswordState> emit,
  ) async {
    emit(state.copyWith(
        isLoading: true, errorMessage: null, successMessage: null));

    final request = ResetPasswordRequest(email: event.email);
    final result = await sendResetLinkUseCase(request);

    if (result is Success<BaseResponse>) {
      emit(state.copyWith(
        isLoading: false,
        successMessage: result.data.message,
      ));
    } else if (result is Error<BaseResponse>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: result.e.toString(),
      ));
    }
  }
}
