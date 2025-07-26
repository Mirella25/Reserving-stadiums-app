import 'package:bloc/bloc.dart';

import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_state.dart';
import '../../domain/entities/sport_entity.dart';
import '../../domain/usecases/get_sports_usecase.dart';
import '../../../../core/result/result.dart';

import 'sport_event.dart';

class SportBloc extends Bloc<SportEvent, SportState> {
  final GetSportsUsecase _getSportsUseCase;

  SportBloc(this._getSportsUseCase) : super(SportInitial()) {
    on<LoadSportsEvent>(_onLoadSports);
  }

  Future<void> _onLoadSports(
    LoadSportsEvent event,
    Emitter<SportState> emit,
  ) async {
    emit(SportLoading());
    final result = await _getSportsUseCase.execute();

    if (result is Success<List<SportEntity>>) {
      emit(SportLoaded(sports: result.data));
    } else if (result is Error<List<SportEntity>>) {
      emit(SportError(message: result.e.toString()));
    } else {
      emit(SportError(message: 'Unexpected error'));
    }
  }
}
