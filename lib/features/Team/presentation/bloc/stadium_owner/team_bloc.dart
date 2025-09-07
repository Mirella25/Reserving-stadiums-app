import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/Team/domain/entities/stadium_owner/team_entity.dart';
import 'package:reserving_stadiums_app/features/Team/domain/usecases/stadium_owner/get_all_teams_usecase.dart';

part 'team_event.dart';
part 'team_state.dart';

class ViewTeamsBloc extends Bloc<ViewTeamsEvent, ViewTeamsState> {
  final GetAllTeamsUsecase getAllTeamsUsecase;

  ViewTeamsBloc(
    this.getAllTeamsUsecase,
  ) : super(const ViewTeamsState()) {
    on<LoadTeamsEvent>(_onLoadTeams);
  }

  Future<void> _onLoadTeams(
    LoadTeamsEvent event,
    Emitter<ViewTeamsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final Result<List<TeamEntity>> result = await getAllTeamsUsecase.execute();

    if (result is Success<List<TeamEntity>>) {
      emit(state.copyWith(
        isLoading: false,
        teams: result.data,
      ));
    } else if (result is Error<List<TeamEntity>>) {
      emit(state.copyWith(
        isLoading: false,
        teams: [],
        errorMessage: result.e.toString(),
      ));
    }
  }
}
