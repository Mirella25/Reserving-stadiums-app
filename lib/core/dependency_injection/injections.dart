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
import '../../features/Team/data/datasources/stadium_owner/team_remote_datasource.dart' as team_remote_stadium;
import '../../features/Team/data/datasources/stadium_owner/team_remote_datasource.dart';
import '../../features/Team/data/repositories/team_repository_impl.dart';
import '../../features/Team/domain/repositories/stadium_owner/team_repository.dart';
import '../../features/Team/domain/usecases/stadium_owner/get_all_teams_usecase.dart';
import '../../features/Team/presentation/bloc/stadium_owner/team_bloc.dart';
import '../../features/booking/data/datasources/payment_remote_datasource.dart' as bk;
import '../../features/booking/domain/usecases/create_booking_usecase.dart';
import '../../features/booking/domain/usecases/start_payment_usecase.dart';
import '../../features/booking/presentation/bloc/confirm_booking_cubit.dart';
import '../../features/booking/presentation/bloc/payment/payment_bloc.dart';
import '../../features/facility/data/datasources/stadium_owner/facility_remote_datasource.dart';
import '../../features/facility/data/repositories_impl/stadium_owner/facility_repository_impl.dart';
import '../../features/facility/domain/repositories/stadium_owner/facility_repository.dart';
import '../../features/facility/domain/usecases/stadium_owner/create_facility_usecase.dart';
import '../../features/facility/domain/usecases/stadium_owner/delete_facility_usecase.dart';
import '../../features/facility/domain/usecases/stadium_owner/get_facility_details.dart';
import '../../features/facility/domain/usecases/stadium_owner/get_stadium_facilities_usecase.dart';
import '../../features/facility/domain/usecases/stadium_owner/update_facility_usecase.dart';
import '../../features/facility/presentation/bloc/stadium_owner/add_facility/add_facility_bloc.dart';
import '../../features/facility/presentation/bloc/stadium_owner/update_facility/update_facility_bloc.dart';
import '../../features/facility/presentation/bloc/stadium_owner/view_facility_details/view_facility_details_bloc.dart';
import '../../features/facility/presentation/bloc/stadium_owner/view_stadium_facilities/view_stadium_facilities_bloc.dart';
import '../../features/invitations/data/datasources/player/invitations_remote_datasource.dart' as inv_player_ds;
import '../../features/invitations/data/datasources/stadium_owner/invitations_remote_datasource.dart';
import '../../features/invitations/data/repository/player/inviatations_repo_impl.dart' as inv_player_repo_impl;
import '../../features/invitations/data/repository/stadium_owner/invitations_repository_impl.dart';
import '../../features/invitations/domain/repositories/player/invite_repository.dart' as inv_player_repo;
import '../../features/invitations/domain/repositories/stadium_owner/invitations_repository.dart';
import '../../features/invitations/domain/usecases/player/send_invite_usecase.dart' as inv_player_uc;
import '../../features/invitations/domain/usecases/stadium_owner/invite_team_usecase.dart';
import '../../features/invitations/presentation/bloc/player/invite_bloc.dart' as inv_player_bloc;
import '../../features/invitations/presentation/bloc/stadium_owner/invite_team/invite_team_bloc.dart';
import '../../features/leagues/data/datasources/leagues_remote_datasources.dart';
import '../../features/leagues/data/datasources/stadium_owner/league_remote_datasource.dart';
import '../../features/leagues/data/repo_impl/leagues_repo_impl.dart';
import '../../features/leagues/data/repo_impl/stadium_owner/league_repository_impl.dart';
import '../../features/leagues/domain/repositories/leagues_repository.dart';
import '../../features/leagues/domain/repositories/stadium_owner/league_repository.dart';
import '../../features/leagues/domain/usecases/get_league_teams_usecase.dart';
import '../../features/leagues/domain/usecases/get_leagues_usecase.dart';
import '../../features/leagues/domain/usecases/request_join_league_usecase.dart';
import '../../features/leagues/domain/usecases/stadium_owner/create_league_usecase.dart';
import '../../features/leagues/domain/usecases/stadium_owner/delete_league_usecase.dart';
import '../../features/leagues/domain/usecases/stadium_owner/get_all_leagues_usecase.dart';
import '../../features/leagues/domain/usecases/stadium_owner/update_league_usecase.dart';
import '../../features/leagues/presentation/bloc/league_teams_bloc/league_teams_bloc.dart';
import '../../features/leagues/presentation/bloc/leagues_bloc.dart'
as player_leagues;
import '../../features/leagues/presentation/bloc/stadium_owner/leagues/leagues_bloc.dart'
as owner_leagues;

import '../../features/leagues/presentation/bloc/stadium_owner/create_league/create_league_bloc.dart';

import '../../features/leagues/presentation/bloc/stadium_owner/update_league/update_league_bloc.dart';
import '../../features/payment/data/datasources/payment_remote.dart';
import '../../features/payment/data/repositories/payment_repository_impl.dart';
import '../../features/payment/domain/repositories/payment_repository.dart';
import '../../features/payment/domain/usecases/create_onboarding_link.dart';
import '../../features/payment/domain/usecases/create_payment_intent.dart';
import '../../features/profile/domain/usecases/get_all_profile_usecase.dart';
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
import '../../features/stadiums/domain/usecases/stadium_owner/delete_stadium_usecase.dart';
import '../../features/stadiums/domain/usecases/stadium_owner/generate_stadium_slots_usecase.dart';
import '../../features/stadiums/domain/usecases/stadium_owner/get_all_stadiums_usecase.dart';
import '../../features/stadiums/domain/usecases/stadium_owner/get_stadium_details.dart';
import '../../features/stadiums/domain/usecases/stadium_owner/get_stadium_request_details_usecase.dart';
import '../../features/stadiums/domain/usecases/stadium_owner/get_stadium_requests_usecase.dart';
import '../../features/stadiums/domain/usecases/stadium_owner/update_stadium_usecase.dart';
import '../../features/stadiums/presentation/bloc/player/stadiums_bloc.dart';
import '../../features/stadiums/presentation/bloc/stadium_owner/add_stadium/stadium_bloc.dart';
import '../../features/stadiums/presentation/bloc/stadium_owner/update_stadium/update_stadium_bloc.dart';
import '../../features/stadiums/presentation/bloc/stadium_owner/view_request_details/view_request_details_bloc.dart';
import '../../features/stadiums/presentation/bloc/stadium_owner/view_stadium_details/view_stadium_details_bloc.dart';
import '../../features/stadiums/presentation/bloc/stadium_owner/view_stadium_requests/stadium_requests_bloc.dart';
import '../../features/stadiums/presentation/bloc/stadium_owner/view_stadiums/view_stadiums_bloc.dart';
import '../../features/teams/data/datasources/team_remote_datasource.dart'as team_player;
import '../../features/teams/data/repo_impl/team_repository_impl.dart'as team_repo_player_impl;
import '../../features/teams/domain/repositories/team_repository.dart' as team_repo_player;
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
import 'package:flutter/foundation.dart';
import '../../features/booking/data/datasources/payment_remote_datasource.dart' as bk_pay_ds;
import '../../features/booking/data/repo_impl/payment_repo_impl.dart' as bk_pay_repo_impl;
import '../../features/booking/domain/repositories/payment_repository.dart' as bk_pay_repo;
import '../../features/booking/domain/usecases/start_payment_usecase.dart' as bk_pay_uc;

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
  getIt.registerFactory(() => player_leagues.LeaguesBloc(
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
  getIt.registerLazySingleton<team_player.TeamRemoteDatasource>(
        () => team_player.TeamRemoteDatasourceImpl(
      dioClient: getIt(),
      local: getIt(), // AuthLocalDataSource مسجّل عندك قبل
    ),
  );

  getIt.registerLazySingleton<team_repo_player.TeamRepository>(
        () => team_repo_player_impl.TeamRepositoryImpl(remote: getIt()),
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
        () => UpdateTeamUsecase(getIt<team_repo_player.TeamRepository>()),
  );
  getIt.registerLazySingleton<DeleteTeamUsecase>(
        () => DeleteTeamUsecase(getIt<team_repo_player.TeamRepository>()),
  );
  // UseCase جديد
  getIt.registerLazySingleton<GetLeagueTeamsUseCase>(
        () => GetLeagueTeamsUseCase(getIt<LeaguesRepository>()),
  );

  // Bloc
  getIt.registerFactory<LeagueTeamsBloc>(
        () => LeagueTeamsBloc(getIt<GetLeagueTeamsUseCase>()),
  );










  getIt.registerLazySingleton<UpdateStadiumUsecase>(() =>
      UpdateStadiumUsecase(stadiumRepository: getIt<StadiumRepository>()));
  getIt.registerFactory<UpdateStadiumBloc>(() => UpdateStadiumBloc(
    getIt<UpdateStadiumUsecase>(),
  ));


  getIt.registerLazySingleton<DeleteStadiumUsecase>(() =>
      DeleteStadiumUsecase(stadiumRepository: getIt<StadiumRepository>()));

  getIt.registerLazySingleton<GenerateStadiumSlotsUsecase>(() =>
      GenerateStadiumSlotsUsecase(
          stadiumRepository: getIt<StadiumRepository>()));



  getIt.registerFactory<ViewStadiumsBloc>(() => ViewStadiumsBloc(
      getIt<GetAllStadiumsUsecase>(),
      getIt<DeleteStadiumUsecase>(),
      getIt<GenerateStadiumSlotsUsecase>()));
  getIt.registerLazySingleton<GetAllStadiumsUsecase>(() =>
      GetAllStadiumsUsecase(stadiumRepository: getIt<StadiumRepository>()));
  getIt.registerFactory<ViewStadiumDetailsBloc>(
          () => ViewStadiumDetailsBloc(getIt<GetStadiumOwnerDetailsUsecase>()));
  getIt.registerLazySingleton<GetStadiumOwnerDetailsUsecase>(() =>
      GetStadiumOwnerDetailsUsecase(
          stadiumRepository: getIt<StadiumRepository>()));
  getIt.registerFactory<ViewStadiumRequestDetailsBloc>(() =>
      ViewStadiumRequestDetailsBloc(getIt<GetStadiumRequestDetailsUsecase>()));
  getIt.registerLazySingleton<GetStadiumRequestDetailsUsecase>(() =>
      GetStadiumRequestDetailsUsecase(
          stadiumRepository: getIt<StadiumRepository>()));

// Stadium Details








  //facilities
  getIt.registerLazySingleton<FacilityRemoteDataSource>(
        () => FacilityRemoteDataSourceImpl(
        local: getIt<AuthLocalDataSource>(), dioClient: getIt<DioClient>()),
  );
  getIt.registerLazySingleton<FacilityRepository>(
        () => FacilityRepositoryImpl(
        facilityRemoteDataSource: getIt<FacilityRemoteDataSource>()),
  );
  getIt.registerLazySingleton<CreateFacilityUsecase>(
        () =>
        CreateFacilityUsecase(facilityRepository: getIt<FacilityRepository>()),
  );
  getIt.registerLazySingleton<DeleteFacilityUsecase>(
        () =>
        DeleteFacilityUsecase(facilityRepository: getIt<FacilityRepository>()),
  );
  getIt.registerFactory(() => CreateFacilityBloc(
    getIt<CreateFacilityUsecase>(),
  ));
  getIt.registerLazySingleton<GetStadiumFacilitiesUsecase>(
        () => GetStadiumFacilitiesUsecase(
        facilityRepository: getIt<FacilityRepository>()),
  );
  getIt.registerFactory(() => ViewStadiumFacilitiesBloc(
      getIt<GetStadiumFacilitiesUsecase>(), getIt<DeleteFacilityUsecase>()));
  getIt.registerLazySingleton<GetFacilityDetailsUsecase>(
        () => GetFacilityDetailsUsecase(
        facilityRepository: getIt<FacilityRepository>()),
  );
  getIt.registerFactory(() => ViewFacilityDetailsBloc(
    getIt<GetFacilityDetailsUsecase>(),
  ));
  getIt.registerLazySingleton<UpdateFacilityUsecase>(
        () =>
        UpdateFacilityUsecase(facilityRepository: getIt<FacilityRepository>()),
  );
  getIt.registerFactory(() => UpdateFacilityBloc(
    getIt<UpdateFacilityUsecase>(),
  ));
  //league
  getIt.registerLazySingleton<LeagueRemoteDatasource>(
        () => LeagueRemoteDatasourceImp(
        localDataSource: getIt<AuthLocalDataSource>(),
        dioClient: getIt<DioClient>()),
  );
  getIt.registerLazySingleton<LeagueRepository>(
        () =>
        LeagueRepositoryImpl(remoteDatasource: getIt<LeagueRemoteDatasource>()),
  );
  getIt.registerLazySingleton<CreateLeagueUsecase>(
        () => CreateLeagueUsecase(getIt<LeagueRepository>()),
  );

  getIt.registerFactory(() => CreateLeagueBloc(
    getIt<CreateLeagueUsecase>(),
  ));

  getIt.registerLazySingleton<GetAllLeaguesUsecase>(
        () => GetAllLeaguesUsecase(getIt<LeagueRepository>()),
  );
  getIt.registerLazySingleton<DeleteLeagueUsecase>(
        () => DeleteLeagueUsecase(getIt<LeagueRepository>()),
  );
  getIt.registerFactory<owner_leagues.LeaguesBloc>(
        () => owner_leagues.LeaguesBloc(
        getAllLeaguesUsecase: getIt<GetAllLeaguesUsecase>(),
        getStadiumDetailsUsecase: getIt<GetStadiumOwnerDetailsUsecase>(),
        deleteLeagueUsecase: getIt<DeleteLeagueUsecase>()),
  );

  getIt.registerLazySingleton<UpdateLeagueUsecase>(
        () => UpdateLeagueUsecase(getIt<LeagueRepository>()),
  );

  getIt.registerFactory(() => UpdateLeagueBloc(
    getIt<UpdateLeagueUsecase>(),
  ));
  //teams
  getIt.registerLazySingleton<team_remote_stadium.TeamRemoteDatasource>(
        () => team_remote_stadium.TeamRemoteDatasourceImp(
        local: getIt<AuthLocalDataSource>(), dioClient: getIt<DioClient>()),
  );
  getIt.registerLazySingleton<TeamRepository>(
        () =>
        TeamRepositoryImpl(teamRemoteDatasource: getIt<TeamRemoteDatasource>()),
  );
  getIt.registerLazySingleton<GetAllTeamsUsecase>(
        () => GetAllTeamsUsecase(teamRepository: getIt<TeamRepository>()),
  );

  getIt.registerFactory(() => ViewTeamsBloc(
    getIt<GetAllTeamsUsecase>(),
  ));
  ///invitations
  getIt.registerLazySingleton<InvitationsRemoteDatasource>(
        () => InvitationsRemoteDatasourceImp(
        local: getIt<AuthLocalDataSource>(), dioClient: getIt<DioClient>()),
  );
  getIt.registerLazySingleton<InvitationsRepository>(
        () => InvitationsRepositoryImpl(
        invitationsRemoteDatasource: getIt<InvitationsRemoteDatasource>()),
  );
  getIt.registerLazySingleton<InviteTeamUsecase>(
        () => InviteTeamUsecase(
        invitationsRepository: getIt<InvitationsRepository>()),
  );

  getIt.registerFactory(() => InviteTeamBloc(
    getIt<InviteTeamUsecase>(),
  ));
  //payment
  getIt.registerLazySingleton<PaymentRemoteDataSource>(
          () => MockPaymentRemoteDataSource());
  getIt.registerLazySingleton<PaymentRepository>(
          () => PaymentRepositoryImpl(remoteDataSource: getIt()));
  getIt.registerFactory(() => CreatePaymentIntent(getIt()));
  getIt.registerFactory(() => CreateOnboardingLink(getIt()));


  /// invitations (player)
  getIt.registerLazySingleton<inv_player_ds.InviteRemoteDatasource>(
        () => inv_player_ds.InviteRemoteDatasourceImpl(
      dioClient: getIt<DioClient>(),
      localDataSource: getIt<AuthLocalDataSource>(),
    ),
  );
  getIt.registerLazySingleton<inv_player_repo.InviteRepository>(
        () => inv_player_repo_impl.InvitationsRepositoryImpl(
      remote: getIt<inv_player_ds.InviteRemoteDatasource>(),
    ),
  );
  getIt.registerLazySingleton<inv_player_uc.SendInviteUsecase>(
        () => inv_player_uc.SendInviteUsecase(
      getIt<inv_player_repo.InviteRepository>(),
    ),
  );
  getIt.registerFactory<inv_player_bloc.InviteBloc>(
        () => inv_player_bloc.InviteBloc(
      sendInvite: getIt<inv_player_uc.SendInviteUsecase>(),
    ),
  );
  getIt.registerLazySingleton<GetAllProfilesUsecase>(() => GetAllProfilesUsecase(getIt<ProfileRepository>()));
  getIt.registerLazySingleton<CreateBookingUseCase>(
        () => CreateBookingUseCase(getIt<BookingRepository>()),
  );
  getIt.registerFactory(() => ConfirmBookingCubit(getIt<CreateBookingUseCase>()));

// ================== Booking Payment (Stripe test pm_card_visa) ==================
// ======================= Booking Payment (Player) =======================
// ======================= Booking Payment (Player) =======================

// 1) DataSource (لازم الـ Impl اللي بياخد DioClient)
  getIt.registerLazySingleton<bk_pay_ds.PaymentRemoteDataSource>(
        () => bk.PaymentRemoteDataSource(getIt<DioClient>()),
  );

// 2) Repository + UseCase (إذا أنت فعلاً بتستعملهن)
  getIt.registerLazySingleton<bk_pay_repo.PaymentRepository>(
        () => bk_pay_repo_impl.PaymentRepositoryImpl(
      getIt<bk_pay_ds.PaymentRemoteDataSource>(),
    ),
  );
  getIt.registerLazySingleton<bk_pay_uc.StartPaymentUsecase>(
        () => bk_pay_uc.StartPaymentUsecase(
      getIt<bk_pay_repo.PaymentRepository>(),
    ),
  );

// 3) PaymentBloc
  if (getIt.isRegistered<PaymentBloc>()) {
    getIt.unregister<PaymentBloc>();
  }
  getIt.registerFactory<PaymentBloc>(
        () => PaymentBloc(
      getIt<bk_pay_ds.PaymentRemoteDataSource>(),
      getIt<AuthLocalDataSource>(),
      simulate: AppConstants.paymentSimulate,
    ),
  );

// (اختياري) لوغ للتأكد:
  debugPrint(
    'DI: payment_ds=${getIt.isRegistered<bk_pay_ds.PaymentRemoteDataSource>()} '
        'payment_bloc=${getIt.isRegistered<PaymentBloc>()}',
  );
  debugPrint('PaymentBloc registered? ${getIt.isRegistered<PaymentBloc>()}');
  debugPrint('StartPaymentUsecase registered? ${getIt.isRegistered<bk_pay_uc.StartPaymentUsecase>()}');

  // داخل setupDependencies() قبل } الأخيرة:
  debugPrint(
    'DI invite(ds)=${getIt.isRegistered<inv_player_ds.InviteRemoteDatasource>()} '
        'repo=${getIt.isRegistered<inv_player_repo.InviteRepository>()} '
        'uc=${getIt.isRegistered<inv_player_uc.SendInviteUsecase>()} '
        'bloc=${getIt.isRegistered<inv_player_bloc.InviteBloc>()}',
  );
}
