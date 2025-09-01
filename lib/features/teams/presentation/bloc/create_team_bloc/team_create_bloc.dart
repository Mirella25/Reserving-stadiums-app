import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/teams/domain/usecases/create_team.dart';
import 'package:reserving_stadiums_app/features/teams/presentation/bloc/create_team_bloc/team_create_state.dart';

import '../../../domain/entities/team_entity.dart';
import 'create_team_event.dart';

class TeamCreateBloc extends Bloc<TeamCreateEvent, TeamCreateState> {
  final CreateTeamUseCase createTeam;

  TeamCreateBloc(this.createTeam) : super(TeamCreateState.initial()) {
    on<SubmitCreateTeam>(_onSubmit);
  }

  Future<void> _onSubmit(
      SubmitCreateTeam event,
      Emitter<TeamCreateState> emit,
      ) async {
    emit(state.copyWith(loading: true, team: null, error: null));

    final res = await createTeam(event.req);

    if (res is Success<TeamEntity>) {
      emit(state.copyWith(loading: false, team: res.data));
    } else if (res is ConnectionError<TeamEntity>) {
      emit(state.copyWith(loading: false, error: 'Connection error'));
    } else if (res is Error<TeamEntity>) {
      var message = res.e?.toString() ?? 'Error';
      if (message.contains('captin_id')) {
        message = 'The selected captain_id is invalid';
      }
      emit(state.copyWith(loading: false, error: message));
    }
    else {
      emit(state.copyWith(loading: false, error: 'Unknown error'));
    }

  }
}
