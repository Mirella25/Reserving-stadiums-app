// lib/features/leagues/presentation/bloc/leagues_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import '../../domain/entities/league_entity.dart';
import '../../domain/entities/league_invitation_entity.dart';
import '../../domain/usecases/get_leagues_usecase.dart';
import '../../domain/usecases/request_join_league_usecase.dart';
import 'leagues_event.dart';
import 'leagues_state.dart';

class LeaguesBloc extends Bloc<LeaguesEvent, LeaguesState> {
  final GetLeaguesUseCase getLeaguesUseCase;
  final RequestJoinLeagueUseCase requestJoinLeagueUseCase;

  LeaguesBloc(this.getLeaguesUseCase, this.requestJoinLeagueUseCase)
      : super(LeaguesState.initial()) {
    on<FetchLeagues>(_onFetch);
    on<RefreshLeagues>(_onRefresh);
    on<JoinLeagueAsTeam>(_onJoinLeague);
  }

  Future<void> _onFetch(FetchLeagues event, Emitter<LeaguesState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, joinSuccess: false));
    final res = await getLeaguesUseCase();

    if (res is Success<List<LeagueEntity>>) {
      emit(state.copyWith(isLoading: false, leagues: res.data, errorMessage: null));
    } else if (res is ConnectionError<List<LeagueEntity>>) {
      emit(state.copyWith(isLoading: false, errorMessage: 'Connection error. Please try again.'));
    } else if (res is Error<List<LeagueEntity>>) {
      emit(state.copyWith(isLoading: false, errorMessage: res.e?.toString() ?? 'Unknown error'));
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _onRefresh(RefreshLeagues event, Emitter<LeaguesState> emit) async {
    final res = await getLeaguesUseCase();

    if (res is Success<List<LeagueEntity>>) {
      emit(state.copyWith(leagues: res.data, errorMessage: null, joinSuccess: false));
    } else if (res is ConnectionError<List<LeagueEntity>>) {
      emit(state.copyWith(errorMessage: 'Connection error. Please try again.'));
    } else if (res is Error<List<LeagueEntity>>) {
      emit(state.copyWith(errorMessage: res.e?.toString() ?? 'Unknown error'));
    }
  }

  Future<void> _onJoinLeague(JoinLeagueAsTeam event, Emitter<LeaguesState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, joinSuccess: false));
    final res = await requestJoinLeagueUseCase.execute(
      teamId: event.teamId,
      leagueId: event.leagueId,
      isTeam: true,
    );
    if (res is Success<LeagueInvitationEntity>) {
      emit(state.copyWith(isLoading: false, joinSuccess: true));
    } else if (res is ConnectionError<LeagueInvitationEntity>) {
      emit(state.copyWith(isLoading: false, errorMessage: 'Connection error'));
    } else if (res is Error<LeagueInvitationEntity>) {
      emit(state.copyWith(isLoading: false, errorMessage: res.e.toString()));
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }
}
