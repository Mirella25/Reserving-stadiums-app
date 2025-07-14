
import 'package:reserving_stadiums_app/core/result/result.dart';

import '../entities/login_entity.dart';

abstract class AuthRepository {
  Future<Result<LoginEntity>> login(String email, String password);
  Future<Result<LoginEntity>> loginWithGoogle(String idToken);
}
