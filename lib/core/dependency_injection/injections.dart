import 'package:get_it/get_it.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';

import 'package:reserving_stadiums_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:reserving_stadiums_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/reset_password_send_usecase.dart';

import '../../features/auth/data/datasources/auth_remote_datasource.dart';
import '../../features/auth/domain/usecases/google_login_usecase.dart';
import '../../features/auth/domain/usecases/submit_reset_password_usecase.dart';
import '../constants/app_strings.dart';
import '../network/api_client.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {

  getIt.registerLazySingleton(() => DioClient(AppConstants.baseUrl));

  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(dioClient: getIt<DioClient>()),
  );
  getIt.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(),
  );


  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
        remote: getIt<AuthRemoteDataSource>(),
        local: getIt<AuthLocalDataSource>()),
  );

  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt<AuthRepository>()),
  );

  getIt.registerLazySingleton<GoogleLoginUseCase>(
    () => GoogleLoginUseCase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton<RegisterUsecase>(
    () => RegisterUsecase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton<SendResetLinkUseCase>(
        () => SendResetLinkUseCase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton<ResetPasswordUseCase>(
        () => ResetPasswordUseCase(getIt()), // إذا بيحتاج repo
  );
}
