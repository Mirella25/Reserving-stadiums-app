import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/domain/entities/register_entity.dart';
import 'package:reserving_stadiums_app/features/auth/domain/repositories/auth_repository.dart';

class RegisterUsecase {
  final AuthRepository repo;

  RegisterUsecase(this.repo);

  Future<Result<RegisterEntity>> execute(
      String email, String role, String password, String confirmPassword) {
    return repo.register(email, role, password, confirmPassword);
  }
}
