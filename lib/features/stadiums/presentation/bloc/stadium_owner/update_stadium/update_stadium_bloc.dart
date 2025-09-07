import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/usecases/stadium_owner/update_stadium_usecase.dart';

part 'update_stadium_event.dart';
part 'update_stadium_state.dart';

class UpdateStadiumBloc extends Bloc<StadiumEvent, UpdateStadiumState> {
  final UpdateStadiumUsecase updateStadiumUsecase;

  UpdateStadiumBloc(
    this.updateStadiumUsecase,
  ) : super(const UpdateStadiumState()) {
    on<UpdateStadiumSubmitted>(_onUpdateStadiumSubmitted);
  }

  Future<void> _onUpdateStadiumSubmitted(
    UpdateStadiumSubmitted event,
    Emitter<UpdateStadiumState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    final Result<void> result = await updateStadiumUsecase.execute(
        stadiumEntity: event.stadiumEntity,
        photosFiles: event.photosFiles,
        id: event.id);

    if (result is Success<StadiumEntity>) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        stadiumEntity: result.data,
      ));
    } else if (result is Error<StadiumEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: result.e.toString(),
        isSuccess: false,
      ));
    }
  }
}
