import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/result/result.dart';
import '../../../../domain/entities/player/facility_entity.dart';
import '../../../../domain/usecases/player/get_facilities_usecase.dart';
import 'facilities_event.dart';
import 'facilities_state.dart';

class FacilitiesBloc extends Bloc<FacilitiesEvent, FacilitiesState> {
  final GetFacilitiesUseCase getFacilitiesUseCase;

  FacilitiesBloc(this.getFacilitiesUseCase) : super(FacilitiesInitial()) {
    on<LoadFacilitiesEvent>(_onLoadFacilities);
  }

  Future<void> _onLoadFacilities(
      LoadFacilitiesEvent event,
      Emitter<FacilitiesState> emit,
      ) async {
    emit(FacilitiesLoading());

    final result = await getFacilitiesUseCase(event.stadiumId);

    if (result is Success<List<FacilityEntity>>) {
      emit(FacilitiesLoaded(result.data));
    } else if (result is ConnectionError<List<FacilityEntity>>) {
      emit(FacilitiesError('No internet connection.'));
    } else if (result is Error<List<FacilityEntity>>) {
      emit(FacilitiesError(result.e.toString()));
    } else {
      emit(FacilitiesError('Unknown error occurred.'));
    }


  }
}
