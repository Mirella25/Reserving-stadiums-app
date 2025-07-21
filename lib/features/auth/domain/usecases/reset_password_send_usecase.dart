import '../../../../core/result/result.dart';
import '../../data/models/request/forget_password/reset_password_request.dart';
import '../../data/models/response/forget_pass/base_response.dart';
import '../repositories/auth_repository.dart';

class SendResetLinkUseCase {
  final AuthRepository repository;

  SendResetLinkUseCase(this.repository);


  Future<Result<BaseResponse>> call(ResetPasswordRequest request) {
    return repository.sendResetPasswordLink(request);
  }
}