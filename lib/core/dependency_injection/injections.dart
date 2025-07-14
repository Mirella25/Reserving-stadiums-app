import 'package:get_it/get_it.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';

import 'package:reserving_stadiums_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:reserving_stadiums_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/login_usecase.dart';

import '../../features/auth/data/datasources/auth_remote_datasource.dart';
import '../../features/auth/domain/usecases/google_login_usecase.dart';
import '../network/api_client.dart';


final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // 🔧 DioClient
  getIt.registerLazySingleton<DioClient>(
        () => DioClient('http://127.0.0.1:8000/api/'),
  );

  // 🌐 Remote Data Source
  getIt.registerLazySingleton<AuthRemoteDataSource>(
        () => AuthRemoteDataSourceImpl(dioClient: getIt<DioClient>()),
  );

  // 📦 Repository
  getIt.registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImpl(remote: getIt<AuthRemoteDataSource>(),local: getIt<AuthLocalDataSource>()),
  );

  // ✅ UseCases
  getIt.registerLazySingleton<LoginUseCase>(
        () => LoginUseCase(getIt<AuthRepository>()),
  );

  getIt.registerLazySingleton<GoogleLoginUseCase>(
        () => GoogleLoginUseCase(getIt<AuthRepository>()),
  );
}
