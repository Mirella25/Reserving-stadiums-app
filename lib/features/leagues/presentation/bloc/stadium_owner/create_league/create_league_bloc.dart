import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/usecases/stadium_owner/create_league_usecase.dart';

part 'create_league_event.dart';
part 'create_league_state.dart';

class CreateLeagueBloc extends Bloc<CreateLeagueEvent, CreateLeagueState> {
  final CreateLeagueUsecase createLeagueUsecase;

  CreateLeagueBloc(this.createLeagueUsecase)
      : super(const CreateLeagueState()) {
    on<CreateLeagueSubmitted>(_onCreateLeagueSubmitted);
  }

  Future<void> _onCreateLeagueSubmitted(
    CreateLeagueSubmitted event,
    Emitter<CreateLeagueState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    try {
      final Result<void> res =
          await createLeagueUsecase.execute(league: event.league);

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
