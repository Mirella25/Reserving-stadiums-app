import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/models/request/forget_password/reset_password_submit_request.dart';
import '../../data/models/request/forget_password/reset_password_request.dart';
import '../../data/models/response/forget_pass/base_response.dart';
import '../repositories/auth_repository.dart';

class ResetPasswordUseCase {
  final AuthRepository repository;

  ResetPasswordUseCase(this.repository);

  Future<Result<BaseResponse>> call(ResetPasswordSubmitRequest request) {
    return repository.resetPassword(request);
  }
}
