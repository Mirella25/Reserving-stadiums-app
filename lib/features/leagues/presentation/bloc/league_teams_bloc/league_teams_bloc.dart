import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/result/result.dart';
import '../../../domain/entities/league_team_entity.dart';
import '../../../domain/usecases/get_league_teams_usecase.dart';
import 'league_teams_event.dart';
import 'league_teams_state.dart';

class LeagueTeamsBloc extends Bloc<LeagueTeamsEvent, LeagueTeamsState> {
  final GetLeagueTeamsUseCase fetchTeams;

  LeagueTeamsBloc(this.fetchTeams) : super(LeagueTeamsState.initial()) {
    on<LoadLeagueTeams>(_onLoad);
    on<RefreshLeagueTeams>(_onRefresh);
  }

  Future<void> _onLoad(LoadLeagueTeams e, Emitter<LeagueTeamsState> emit) async {
    emit(state.copyWith(loading: true, error: null));
    final res = await fetchTeams(e.leagueId);
    if (res is Success<List<LeagueTeamEntity>>) {
      emit(state.copyWith(
        loading: false,
        teams: res.data,
        error: null,
      ));
    } else if (res is ConnectionError<List<LeagueTeamEntity>>) {
      emit(state.copyWith(
        loading: false,
        error: 'Connection error. Please try again.',
      ));
    } else if (res is Error<List<LeagueTeamEntity>>) {
      emit(state.copyWith(
        loading: false,
        error: res.e?.toString() ?? 'Unknown error',
      ));
    } else {
      emit(state.copyWith(loading: false));
    }
  }

  Future<void> _onRefresh(RefreshLeagueTeams e, Emitter<LeagueTeamsState> emit) async {
    final res = await fetchTeams(e.leagueId);
    if (res is Success<List<LeagueTeamEntity>>) {
      emit(state.copyWith(
        teams: res.data,
        error: null,
      ));
    }
    else if (res is Error<List<LeagueTeamEntity>>) {
      emit(state.copyWith(
        loading: false,
        error: res.e?.toString() ?? 'Unknown error',
      ));
    } else {
      emit(state.copyWith(loading: false));
    }

  }
}
