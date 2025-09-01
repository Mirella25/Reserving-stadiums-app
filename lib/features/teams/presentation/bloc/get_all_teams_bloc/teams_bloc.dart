import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import '../../../domain/entities/team_entity.dart';
import '../../../domain/usecases/GetAllTeams_usecase.dart';
import 'teams_event.dart';
import 'teams_state.dart';
import '../../../../auth/data/datasources/auth_local_datasource.dart';

class TeamsBloc extends Bloc<TeamsEvent, TeamsState> {
  final GetAllTeamsUseCase getAllTeams;
  final AuthLocalDataSource local;

  TeamsBloc(this.getAllTeams, this.local) : super(TeamsState.initial()) {
    on<LoadTeams>(_onLoad);
    on<RefreshTeams>(_onLoad);
  }

  Future<void> _onLoad(TeamsEvent e, Emitter<TeamsState> emit) async {
    emit(state.copyWith(loading: true, error: null, myTeam: null));
    final res = await getAllTeams();

    if (res is Success<List<TeamEntity>>) {
      final uid = await local.getCachedUserId();

      TeamEntity? my;
      if (uid != null) {
        // ابحث عن فريقي (أنا كابتن)
        for (final t in res.data) {
          if (t.captainId == uid) {
            my = t;
            break;
          }
        }
      }

      emit(state.copyWith(
        loading: false,
        teams: res.data,
        myTeam: my,
      ));
    } else if (res is ConnectionError<List<TeamEntity>>) {
      emit(state.copyWith(loading: false, error: 'Connection error'));
    } else if (res is Error<List<TeamEntity>>) {
      emit(state.copyWith(loading: false, error: res.e?.toString() ?? 'Error'));
    } else {
      emit(state.copyWith(loading: false, error: 'Unknown error'));
    }
  }
}
