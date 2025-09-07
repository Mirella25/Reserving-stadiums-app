import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';
import 'package:reserving_stadiums_app/features/facility/domain/usecases/stadium_owner/update_facility_usecase.dart';

part 'update_facility_event.dart';
part 'update_facility_state.dart';

class UpdateFacilityBloc
    extends Bloc<UpdateFacilityEvent, UpdateFacilityState> {
  final UpdateFacilityUsecase updateFacilityUsecase;

  UpdateFacilityBloc(
    this.updateFacilityUsecase,
  ) : super(const UpdateFacilityState()) {
    on<UpdateFacilitySubmitted>(_onUpdateFacilitySubmitted);
  }

  Future<void> _onUpdateFacilitySubmitted(
    UpdateFacilitySubmitted event,
    Emitter<UpdateFacilityState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    final Result<void> result = await updateFacilityUsecase.execute(
        facilityEntity: event.facilityEntity,
        photosFiles: event.photosFiles,
        id: event.id);

    if (result is Success<FacilityEntity>) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        facilityEntity: result.data,
      ));
    } else if (result is Error<FacilityEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: result.e.toString(),
        isSuccess: false,
      ));
    }
  }
}
