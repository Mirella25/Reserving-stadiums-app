import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserving_stadiums_app/features/teams/presentation/bloc/get_team_details_bloc/team_details_event.dart';
import 'package:reserving_stadiums_app/features/teams/presentation/bloc/get_team_details_bloc/team_details_state.dart';

import '../../../../../core/result/result.dart';
import '../../../domain/entities/team_details_entity.dart';
import '../../../domain/entities/team_entity.dart';
import '../../../domain/usecases/delete_team_usecase.dart';
import '../../../domain/usecases/getTeamDetails_usecase.dart';
import '../../../domain/usecases/update_team_usecase.dart';

class TeamDetailsBloc extends Bloc<TeamDetailsEvent, TeamDetailsState> {
  final GetTeamDetailsUsecase getDetailsUC;
  final UpdateTeamUsecase updateUC;
  final DeleteTeamUsecase deleteUC;

  TeamDetailsBloc({
    required this.getDetailsUC,
    required this.updateUC,
    required this.deleteUC,
  }) : super(const TeamDetailsState()) {
    on<LoadTeamDetails>(_onLoad);
    on<UpdateTeamEvent>(_onUpdate);
    on<DeleteTeamEvent>(_onDelete);
  }

  Future<void> _onLoad(
      LoadTeamDetails e,
      Emitter<TeamDetailsState> emit,
      ) async {
    emit(state.copyWith(loading: true, error: null, deleted: false, updateSuccess: false));
    final Result<TeamDetailsEntity> r = await getDetailsUC(e.teamId);

    if (r is Success<TeamDetailsEntity>) {
      emit(state.copyWith(loading: false, data: r.data));
    } else if (r is ConnectionError<TeamDetailsEntity>) {
      emit(state.copyWith(loading: false, error: 'Connection error'));
    } else if (r is Error<TeamDetailsEntity>) {
      emit(state.copyWith(loading: false, error: r.e?.toString() ?? 'Failed to load'));
    } else {
      emit(state.copyWith(loading: false, error: 'Unknown error'));
    }
  }

  Future<void> _onUpdate(
      UpdateTeamEvent e,
      Emitter<TeamDetailsState> emit,
      ) async {
    emit(state.copyWith(updating: true, error: null, updateSuccess: false));

    // updateTeam بيرجع TeamEntity
    final Result<TeamEntity> r = await updateUC(e.teamId, e.req);

    if (r is Success<TeamEntity>) {
      emit(state.copyWith(updating: false, updateSuccess: true));
      add(LoadTeamDetails(e.teamId)); // جِب آخر تفاصيل بعد النجاح
    } else if (r is ConnectionError<TeamEntity>) {
      emit(state.copyWith(updating: false, error: 'Connection error'));
    } else if (r is Error<TeamEntity>) {
      emit(state.copyWith(updating: false, error: r.e?.toString() ?? 'Update failed'));
    } else {
      emit(state.copyWith(updating: false, error: 'Unknown error'));
    }
  }

  Future<void> _onDelete(
      DeleteTeamEvent e,
      Emitter<TeamDetailsState> emit,
      ) async {
    emit(state.copyWith(loading: true, error: null, deleted: false));

    final Result<bool> r = await deleteUC(e.teamId);

    if (r is Success<bool>) {
      emit(state.copyWith(loading: false, deleted: true));
    } else if (r is ConnectionError<bool>) {
      emit(state.copyWith(loading: false, error: 'Connection error'));
    } else if (r is Error<bool>) {
      emit(state.copyWith(loading: false, error: r.e?.toString() ?? 'Delete failed'));
    } else {
      emit(state.copyWith(loading: false, error: 'Unknown error'));
    }
  }
}