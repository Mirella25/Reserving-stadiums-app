import 'package:get_it/get_it.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:reserving_stadiums_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/reset_password_send_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/submit_reset_password_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/google_login_usecase.dart';
import 'package:reserving_stadiums_app/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:reserving_stadiums_app/features/profile/domain/repositories/profile_repository.dart';
import 'package:reserving_stadiums_app/features/profile/domain/usecases/create_profile_usecase.dart';
import '../../features/auth/data/datasources/auth_remote_datasource.dart';
import '../../features/stadiums/data/datasources/player/stadiums_remote_datasource.dart';
import '../../features/stadiums/data/repositories_impl/player/stadiums_repo_impl.dart';
import '../../features/stadiums/domain/repositories/player/stadiums_repository.dart';
import '../../features/stadiums/domain/usecases/player/get_all_stadiums_usecase.dart';
import '../../features/stadiums/presentation/bloc/player/stadiums_bloc.dart';
import '../constants/app_strings.dart';
import '../network/api_client.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // ✅ Dio Client
  getIt.registerLazySingleton(() => DioClient(AppConstants.baseUrl));

  // ✅ Auth
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
        () => ResetPasswordUseCase(getIt()),
  );

  // ✅ Profile
  getIt.registerLazySingleton<ProfileRemoteDataSource>(
        () => ProfileRemoteDataSourceImpl(
      dioClient: getIt<DioClient>(),
      local: getIt<AuthLocalDataSource>(),
    ),
  );
  getIt.registerLazySingleton<ProfileRepository>(
        () => ProfileRepositoryImpl(
      profileRemoteDataSource: getIt<ProfileRemoteDataSource>(),
    ),
  );
  getIt.registerLazySingleton<CreateProfileUsecase>(
        () => CreateProfileUsecase(getIt<ProfileRepository>()),
  );

  // ✅ Stadiums 🏟️
  getIt.registerLazySingleton<StadiumsRemoteDatasource>(
        () => StadiumsRemoteDatasourceImpl(getIt<DioClient>()),
  );
  getIt.registerLazySingleton<StadiumsRepository>(
        () => StadiumsRepositoryImpl(getIt<StadiumsRemoteDatasource>()),
  );
  getIt.registerLazySingleton<GetAllStadiumsUseCase>(
        () => GetAllStadiumsUseCase(getIt<StadiumsRepository>()),
  );
  getIt.registerFactory(() => StadiumsBloc(getIt<GetAllStadiumsUseCase>()));
}
