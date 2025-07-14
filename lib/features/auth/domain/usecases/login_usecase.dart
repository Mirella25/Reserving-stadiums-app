
import '../../../../core/result/result.dart';
import '../entities/login_entity.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repo;

  LoginUseCase(this.repo);

  Future<Result<LoginEntity>> execute(String email, String password) {
    return repo.login(email, password);
  }


}
