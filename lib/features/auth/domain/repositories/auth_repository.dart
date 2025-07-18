import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/domain/entities/register_entity.dart';

import '../entities/login_entity.dart';

abstract class AuthRepository {
  Future<Result<LoginEntity>> login(String email, String password);
  Future<Result<LoginEntity>> loginWithGoogle(String idToken);
  Future<Result<RegisterEntity>> register(
      String email, String role, String password, String confirmPassword);
}
