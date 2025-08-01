import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/usecases/stadium_owner/create_stadium_usecase.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/usecases/stadium_owner/get_stadium_requests_usecase.dart';

part 'stadium_requests_event.dart';
part 'stadium_requests_state.dart';

class StadiumRequestsBloc
    extends Bloc<StadiumRequetsEvent, StadiumRequestsState> {
  final GetStadiumRequestsUsecase getRequestsUsecase;

  StadiumRequestsBloc(this.getRequestsUsecase)
      : super(const StadiumRequestsState()) {
    on<LoadStadiumRequestsEvent>(_onLoadRequests);
  }

  Future<void> _onLoadRequests(
    LoadStadiumRequestsEvent event,
    Emitter<StadiumRequestsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final Result<List<StadiumEntity>> result =
        await getRequestsUsecase.execute();

    if (result is Success<List<StadiumEntity>>) {
      emit(state.copyWith(
        isLoading: false,
        stadiumEntity: result.data,
      ));
    } else if (result is Error<List<StadiumEntity>>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: result.e.toString(),
      ));
    }
  }
}
