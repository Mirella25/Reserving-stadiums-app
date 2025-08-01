import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/usecases/stadium_owner/create_stadium_usecase.dart';

part 'stadium_event.dart';
part 'stadium_state.dart';

class StadiumBloc extends Bloc<StadiumEvent, StadiumState> {
  final CreateStadiumUsecase createStadiumUsecase;

  StadiumBloc(this.createStadiumUsecase) : super(const StadiumState()) {
    on<CreateStadiumSubmitted>(_onCreateStadiumSubmitted);
  }

  Future<void> _onCreateStadiumSubmitted(
    CreateStadiumSubmitted event,
    Emitter<StadiumState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    final Result<StadiumEntity> result = await createStadiumUsecase.execute(
      stadiumEntity: event.stadiumEntity,
      photosFiles: event.photosFiles,
    );

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
