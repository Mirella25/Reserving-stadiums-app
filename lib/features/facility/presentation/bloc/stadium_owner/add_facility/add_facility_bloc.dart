import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';
import 'package:reserving_stadiums_app/features/facility/domain/usecases/stadium_owner/create_facility_usecase.dart';
import 'package:reserving_stadiums_app/features/facility/domain/usecases/stadium_owner/delete_facility_usecase.dart';

part 'add_facility_event.dart';
part 'add_facility_state.dart';

class CreateFacilityBloc
    extends Bloc<CreateFacilityEvent, CreateFacilityState> {
  final CreateFacilityUsecase createFacilityUsecase;

  CreateFacilityBloc(
    this.createFacilityUsecase,
  ) : super(const CreateFacilityState()) {
    on<CreateFacilitySubmitted>(_onCreateFacilitySubmitted);
  }

  Future<void> _onCreateFacilitySubmitted(
    CreateFacilitySubmitted event,
    Emitter<CreateFacilityState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    final Result<void> result = await createFacilityUsecase.execute(
      facilityEntity: event.facilityEntity,
      photosFiles: event.photosFiles,
    );

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
