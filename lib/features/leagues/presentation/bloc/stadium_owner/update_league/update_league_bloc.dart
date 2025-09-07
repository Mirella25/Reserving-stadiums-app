import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/usecases/stadium_owner/update_league_usecase.dart';

part 'update_league_event.dart';
part 'update_league_state.dart';

class UpdateLeagueBloc extends Bloc<UpdateLeagueEvent, UpdateLeagueState> {
  final UpdateLeagueUsecase updateLeagueUsecase;

  UpdateLeagueBloc(this.updateLeagueUsecase)
      : super(const UpdateLeagueState()) {
    on<UpdateLeagueSubmitted>(_onUpdateLeagueSubmitted);
  }

  Future<void> _onUpdateLeagueSubmitted(
    UpdateLeagueSubmitted event,
    Emitter<UpdateLeagueState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    try {
      final Result<void> res =
          await updateLeagueUsecase.execute(league: event.league, id: event.id);

      if (res is Success<void>) {
        emit(state.copyWith(isLoading: false, isSuccess: true));
      } else if (res is Error<void>) {
        emit(state.copyWith(
            isLoading: false,
            isSuccess: false,
            errorMessage: res.e.toString()));
      } else {
        emit(state.copyWith(
            isLoading: false, isSuccess: false, errorMessage: 'Unknown error'));
      }
    } catch (e, st) {
      // safety net
      emit(state.copyWith(
          isLoading: false, isSuccess: false, errorMessage: e.toString()));
      // optionally log st
    }
  }
}
