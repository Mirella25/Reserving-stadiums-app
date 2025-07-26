import 'package:get_it/get_it.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';

import 'package:reserving_stadiums_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:reserving_stadiums_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/reset_password_send_usecase.dart';
import 'package:reserving_stadiums_app/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:reserving_stadiums_app/features/profile/domain/repositories/profile_repository.dart';
import 'package:reserving_stadiums_app/features/profile/domain/usecases/create_profile_usecase.dart';
import 'package:reserving_stadiums_app/features/sport/data/datasources/sport_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/sport/data/repositories/sport_repository_impl.dart';
import 'package:reserving_stadiums_app/features/sport/domain/repositories/sport_repository.dart';
import 'package:reserving_stadiums_app/features/sport/domain/usecases/get_sports_usecase.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_bloc.dart';
import 'package:reserving_stadiums_app/features/stadium/data/datasources/stadium_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/stadium/data/repositories/stadium_repository_impl.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/repositories/stadium_repository.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/usecases/create_stadium_usecase.dart';
import 'package:reserving_stadiums_app/features/stadium/presentation/bloc/stadium_bloc.dart';

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
  getIt.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(
        dioClient: getIt<DioClient>(), local: getIt<AuthLocalDataSource>()),
  );

  getIt.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(
      profileRemoteDataSource: getIt<ProfileRemoteDataSource>(),
    ),
  );

  getIt.registerLazySingleton<CreateProfileUsecase>(
    () => CreateProfileUsecase(getIt<ProfileRepository>()),
  );
  getIt.registerLazySingleton<SportRemoteDataSource>(() =>
      SportRemoteDataSourceImpl(
          getIt<DioClient>(), getIt<AuthLocalDataSource>()));
  getIt.registerLazySingleton<SportRepository>(
      () => SportRepositoryImpl(getIt<SportRemoteDataSource>()));
  getIt.registerLazySingleton<GetSportsUsecase>(
      () => GetSportsUsecase(sportRepository: getIt<SportRepository>()));
  getIt.registerLazySingleton<StadiumRemoteDataSource>(() =>
      StadiumRemoteDataSourceImpl(
          dioClient: getIt<DioClient>(), local: getIt<AuthLocalDataSource>()));
  getIt.registerLazySingleton<StadiumRepository>(() => StadiumRepositoryImpl(
      stadiumRemoteDataSource: getIt<StadiumRemoteDataSource>()));
  getIt.registerLazySingleton<CreateStadiumUsecase>(() =>
      CreateStadiumUsecase(stadiumRepository: getIt<StadiumRepository>()));
  getIt.registerFactory<SportBloc>(() => SportBloc(getIt<GetSportsUsecase>()));
  getIt.registerFactory<StadiumBloc>(
      () => StadiumBloc(getIt<CreateStadiumUsecase>()));
}
