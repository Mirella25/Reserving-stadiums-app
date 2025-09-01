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
import 'package:reserving_stadiums_app/features/sport/data/datasources/sport_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/sport/data/repositories/sport_repository_impl.dart';
import 'package:reserving_stadiums_app/features/sport/domain/repositories/sport_repository.dart';
import 'package:reserving_stadiums_app/features/sport/domain/usecases/get_sports_usecase.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_bloc.dart';
import '../../features/leagues/data/datasources/leagues_remote_datasources.dart';
import '../../features/leagues/data/repo_impl/leagues_repo_impl.dart';
import '../../features/leagues/domain/repositories/leagues_repository.dart';
import '../../features/leagues/domain/usecases/get_league_teams_usecase.dart';
import '../../features/leagues/domain/usecases/get_leagues_usecase.dart';
import '../../features/leagues/domain/usecases/request_join_league_usecase.dart';
import '../../features/leagues/presentation/bloc/league_teams_bloc/league_teams_bloc.dart';
import '../../features/leagues/presentation/bloc/leagues_bloc.dart';
import '../../features/profile/domain/usecases/get_profile_details_usecase.dart';
import '../../features/profile/presentation/bloc/profile_bloc.dart';
import '../../features/stadiums/domain/usecases/stadium_owner/delete_stadium_request_usecase.dart';

import '../../features/auth/data/datasources/auth_remote_datasource.dart';
import '../../features/booking/data/datasources/stadium_booking_remote_datasource.dart';
import '../../features/booking/data/repo_impl/booking_repo_impl.dart';
import '../../features/booking/domain/repositories/booking_repository.dart';
import '../../features/booking/domain/usecases/get_stadium_times_usecase.dart';
import '../../features/booking/presentation/bloc/booking_times_bloc.dart';
import '../../features/stadium_details/data/datasources/player/stadium_details_remote_datasource.dart';
import '../../features/stadium_details/data/repo_impl/player/stadium_details_repo_impl.dart';
import '../../features/stadium_details/domain/repositories/player/stadium_details_repo.dart';
import '../../features/stadium_details/domain/usecases/player/get_facilities_usecase.dart';
import '../../features/stadium_details/domain/usecases/player/stadium_details_usecase.dart';
import '../../features/stadium_details/presentation/bloc/player/facilities_bloc/facilities_bloc.dart';
import '../../features/stadiums/data/datasources/player/stadiums_remote_datasource.dart';
import '../../features/stadiums/data/datasources/stadium_owner/stadium_remote_datasource.dart';
import '../../features/stadiums/data/repositories_impl/player/stadiums_repo_impl.dart';
import '../../features/stadiums/data/repositories_impl/stadium_owner/stadium_repository_impl.dart';
import '../../features/stadiums/domain/repositories/player/stadiums_repository.dart';
import '../../features/stadiums/domain/repositories/stadium_owner/stadium_repository.dart';
import '../../features/stadiums/domain/usecases/player/get_all_stadiums_usecase.dart';
import '../../features/stadiums/domain/usecases/stadium_owner/create_stadium_usecase.dart';
import '../../features/stadiums/domain/usecases/stadium_owner/get_stadium_requests_usecase.dart';
import '../../features/stadiums/presentation/bloc/player/stadiums_bloc.dart';
import '../../features/stadiums/presentation/bloc/stadium_owner/add_stadium/stadium_bloc.dart';
import '../../features/stadiums/presentation/bloc/stadium_owner/view_stadium_requests/stadium_requests_bloc.dart';
import '../../features/teams/data/datasources/team_remote_datasource.dart';
import '../../features/teams/data/repo_impl/team_repository_impl.dart';
import '../../features/teams/domain/repositories/team_repository.dart';
import '../../features/teams/domain/usecases/GetAllTeams_usecase.dart';
import '../../features/teams/domain/usecases/create_team.dart';
import '../../features/teams/domain/usecases/delete_team_usecase.dart';
import '../../features/teams/domain/usecases/getTeamDetails_usecase.dart';
import '../../features/teams/domain/usecases/update_team_usecase.dart';
import '../../features/teams/presentation/bloc/create_team_bloc/team_create_bloc.dart';
import '../../features/teams/presentation/bloc/get_all_teams_bloc/teams_bloc.dart';
import '../../features/teams/presentation/bloc/get_team_details_bloc/team_details_bloc.dart';
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
  getIt.registerLazySingleton<DeleteStadiumRequestUsecase>(() =>
      DeleteStadiumRequestUsecase(
          stadiumRepository: getIt<StadiumRepository>()));
  getIt.registerFactory<SportBloc>(() => SportBloc(getIt<GetSportsUsecase>()));
  getIt.registerFactory<StadiumBloc>(() => StadiumBloc(
      getIt<CreateStadiumUsecase>(), getIt<DeleteStadiumRequestUsecase>()));
  getIt.registerLazySingleton<GetStadiumRequestsUsecase>(() =>
      GetStadiumRequestsUsecase(stadiumRepository: getIt<StadiumRepository>()));
  getIt.registerFactory(
    () => StadiumRequestsBloc(getIt<GetStadiumRequestsUsecase>()),
  );


// ✅ Stadium Details 🏟️
  getIt.registerLazySingleton<StadiumDetailsRemoteDataSource>(
        () => StadiumDetailsRemoteDataSourceImpl(getIt<DioClient>()),
  );

  getIt.registerLazySingleton<StadiumDetailsRepository>(
        () => StadiumDetailsRepoImp(getIt<StadiumDetailsRemoteDataSource>()),
  );

  getIt.registerLazySingleton<GetStadiumDetailsUsecase>(
        () => GetStadiumDetailsUsecase(getIt<StadiumDetailsRepository>()),
  );



  getIt.registerLazySingleton<GetFacilitiesUseCase>(
        () => GetFacilitiesUseCase(getIt<StadiumDetailsRepository>()),
  );

  getIt.registerFactory<FacilitiesBloc>(
        () => FacilitiesBloc(getIt<GetFacilitiesUseCase>()),
  );

  getIt.registerLazySingleton<BookingRemoteDataSource>(
          () => BookingRemoteDataSourceImpl( dioClient: getIt<DioClient>(),));

  getIt.registerLazySingleton<BookingRepository>(
          () => BookingRepositoryImpl(getIt<BookingRemoteDataSource>()));


      getIt.registerLazySingleton<GetStadiumTimesUseCase>(
          () => GetStadiumTimesUseCase(getIt<BookingRepository>()));

  getIt.registerFactory(() => BookingTimesBloc(getIt<GetStadiumTimesUseCase>()));

  // ✅ Profile (تكملة)
  getIt.registerLazySingleton<GetProfileDetailsUsecase>(
        () => GetProfileDetailsUsecase(getIt<ProfileRepository>()),
  );

  // إذا كان الـ ProfileBloc يأخذ repository + getDetailsUsecase
  getIt.registerFactory<ProfileBloc>(
        () => ProfileBloc(
      repository: getIt<ProfileRepository>(),
      getDetailsUsecase: getIt<GetProfileDetailsUsecase>(),
    ),
  );
  getIt.registerLazySingleton<LeaguesRemoteDataSource>(() =>
      LeaguesRemoteDataSourceImpl(
        dioClient: getIt<DioClient>(),
        local: getIt<AuthLocalDataSource>(),
      ),
  );
// Repo
  getIt.registerLazySingleton<LeaguesRepository>(
        () => LeaguesRepositoryImpl(getIt<LeaguesRemoteDataSource>()),
  );
// UseCase
  getIt.registerLazySingleton<GetLeaguesUseCase>(
        () => GetLeaguesUseCase(getIt<LeaguesRepository>()),
  );
// Bloc
  getIt.registerLazySingleton<RequestJoinLeagueUseCase>(
        () => RequestJoinLeagueUseCase(getIt<LeaguesRepository>()),
  );
  getIt.registerFactory(() => LeaguesBloc(
    getIt<GetLeaguesUseCase>(),
    getIt<RequestJoinLeagueUseCase>(),
  ));
  // لو كنت عامل نسخة من ProfileBloc تأخذ createProfileUsecase + getDetailsUsecase
  // استخدم التسجيل التالي بدلاً من السابق:
  // getIt.registerFactory<ProfileBloc>(
  //   () => ProfileBloc(
  //     createProfileUsecase: getIt<CreateProfileUsecase>(),
  //     getDetailsUsecase: getIt<GetProfileDetailsUsecase>(),
  //   ),
  // );

  // Teams
  getIt.registerLazySingleton<TeamRemoteDatasource>(
        () => TeamRemoteDatasourceImpl(
      dioClient: getIt(),
      local: getIt(), // AuthLocalDataSource مسجّل عندك قبل
    ),
  );

  getIt.registerLazySingleton<TeamRepository>(
        () => TeamRepositoryImpl(remote: getIt()),
  );

  getIt.registerFactory<CreateTeamUseCase>(
        () => CreateTeamUseCase(getIt()),
  );

  getIt.registerFactory<TeamCreateBloc>(
        () => TeamCreateBloc(getIt()),
  );
  getIt.registerFactory<GetAllTeamsUseCase>(() => GetAllTeamsUseCase(getIt()));
  getIt.registerFactory<TeamsBloc>(() => TeamsBloc(getIt(), getIt()));
  getIt.registerLazySingleton<GetTeamDetailsUsecase>(
        () => GetTeamDetailsUsecase(getIt()),
  );

  getIt.registerFactory<TeamDetailsBloc>(
        () => TeamDetailsBloc(
      getDetailsUC: getIt<GetTeamDetailsUsecase>(),
      updateUC: getIt<UpdateTeamUsecase>(),
      deleteUC: getIt<DeleteTeamUsecase>(),
    ),
  );
  getIt.registerLazySingleton<UpdateTeamUsecase>(
        () => UpdateTeamUsecase(getIt<TeamRepository>()),
  );
  getIt.registerLazySingleton<DeleteTeamUsecase>(
        () => DeleteTeamUsecase(getIt<TeamRepository>()),
  );
  // UseCase جديد
  getIt.registerLazySingleton<GetLeagueTeamsUseCase>(
        () => GetLeagueTeamsUseCase(getIt<LeaguesRepository>()),
  );

  // Bloc
  getIt.registerFactory<LeagueTeamsBloc>(
        () => LeagueTeamsBloc(getIt<GetLeagueTeamsUseCase>()),
  );



}
