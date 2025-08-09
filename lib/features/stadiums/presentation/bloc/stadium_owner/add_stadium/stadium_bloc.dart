import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/usecases/stadium_owner/create_stadium_usecase.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/usecases/stadium_owner/delete_stadium_request_usecase.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/bloc/stadium_owner/view_stadium_requests/stadium_requests_bloc.dart';

part 'stadium_event.dart';
part 'stadium_state.dart';

class StadiumBloc extends Bloc<StadiumEvent, StadiumState> {
  final CreateStadiumUsecase createStadiumUsecase;
  final DeleteStadiumRequestUsecase deleteStadiumRequestUsecase;

  StadiumBloc(this.createStadiumUsecase, this.deleteStadiumRequestUsecase)
      : super(const StadiumState()) {
    on<CreateStadiumSubmitted>(_onCreateStadiumSubmitted);
    on<DeleteStadiumRequestSubmitted>(_onDeleteStadiumRequestSubmitted);
  }

  Future<void> _onCreateStadiumSubmitted(
    CreateStadiumSubmitted event,
    Emitter<StadiumState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    final Result<void> result = await createStadiumUsecase.execute(
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

  Future<void> _onDeleteStadiumRequestSubmitted(
    DeleteStadiumRequestSubmitted event,
    Emitter<StadiumState> emit,
  ) async {
    emit(state.copyWith(
        isDeleting: true, errorMessage: null, deleteSuccess: false));

    final Result<void> result =
        await deleteStadiumRequestUsecase.execute(event.id);

    if (result is Success<void>) {
      emit(state.copyWith(
        isDeleting: false,
        isSuccess: true,
      ));
      add(LoadStadiumRequestsEvent() as StadiumEvent);
    } else if (result is Error<StadiumEntity>) {
      emit(state.copyWith(
        isDeleting: false,
        errorMessage: result.e.toString(),
      ));
    }
  }
}
