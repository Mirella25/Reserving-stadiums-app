import '../../../../core/result/result.dart';
import '../entities/login_entity.dart';
import '../repositories/auth_repository.dart';

class GoogleLoginUseCase {
  final AuthRepository repo;

  GoogleLoginUseCase(this.repo);

  Future<Result<LoginEntity>> execute(String idToken) {
    return repo.loginWithGoogle(idToken);
  }
}
