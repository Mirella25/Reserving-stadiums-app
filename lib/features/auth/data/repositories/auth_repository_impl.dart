import 'package:reserving_stadiums_app/features/auth/data/models/request/forget_password/reset_password_request.dart';
import 'package:reserving_stadiums_app/features/auth/data/models/request/forget_password/reset_password_submit_request.dart';

import 'package:reserving_stadiums_app/features/auth/domain/entities/register_entity.dart';

import '../../../../core/result/result.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/response/forget_pass/base_response.dart';

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
      await local.cacheRole(result.data.role);
    }
    return result;
  }

  Future<Result<BaseResponse>> sendResetPasswordLink(
      ResetPasswordRequest request) {
    return remote.sendResetLink(request);
  }

  Future<Result<BaseResponse>> resetPassword(
      ResetPasswordSubmitRequest request) {
    return remote.resetPassword(request);
  }
}
