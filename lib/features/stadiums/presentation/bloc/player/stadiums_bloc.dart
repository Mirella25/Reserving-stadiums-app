import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/bloc/player/stadiums_event.dart';
import '../../../domain/usecases/player/get_all_stadiums_usecase.dart';

import 'stadiums_state.dart';

class StadiumsBloc extends Bloc<StadiumsEvent, StadiumsState> {
  final GetAllStadiumsUseCase getAllStadiumsUseCase;

  StadiumsBloc(this.getAllStadiumsUseCase) : super(StadiumsInitial()) {
    on<GetAllStadiumsEvent>(_onGetAllStadiums);
  }

  Future<void> _onGetAllStadiums(
      GetAllStadiumsEvent event,
      Emitter<StadiumsState> emit,
      ) async {
    emit(StadiumsLoading());

    final result = await getAllStadiumsUseCase();

    switch (result) {
      case Success(data: final stadiums):
        emit(StadiumsLoaded(stadiums));
        break;
      case Error(:final e):
        emit(StadiumsError(e.toString()));
        break;
      case ConnectionError():
        emit(StadiumsError("Connection error. Please try again."));
        break;
    }
  }
}
