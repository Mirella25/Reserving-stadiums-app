import 'package:reserving_stadiums_app/features/auth/domain/entities/register_entity.dart';

import '../../../../core/result/result.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remote;
  final AuthLocalDataSource local;

  AuthRepositoryImpl({required this.remote, required this.local});

  @override
  Future<Result<LoginEntity>> login(String email, String password) async {
    final result = await remote.login(email, password);
    if (result is Success<LoginEntity>) {
      await local.cacheToken(result.data.token);
    }
    return result;
  }

  @override
  Future<Result<LoginEntity>> loginWithGoogle(String idToken) async {
    final result = await remote.loginWithGoogle(idToken);
    if (result is Success<LoginEntity>) {
      await local.cacheToken(result.data.token);
    }
    return result;
  }

  @override
  Future<Result<RegisterEntity>> register(String email, String role,
      String password, String confirmPassword) async {
    final result =
        await remote.register(email, role, password, confirmPassword);
    if (result is Success<RegisterEntity>) {
      await local.cacheToken(result.data.role);
    }
    return result;
  }
}
