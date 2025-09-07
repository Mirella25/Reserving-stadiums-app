import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';
import 'package:reserving_stadiums_app/features/facility/domain/usecases/stadium_owner/delete_facility_usecase.dart';
import 'package:reserving_stadiums_app/features/facility/domain/usecases/stadium_owner/get_stadium_facilities_usecase.dart';

part 'view_stadium_facilities_event.dart';
part 'view_stadium_facilities_state.dart';

class ViewStadiumFacilitiesBloc
    extends Bloc<ViewStadiumFacilitiesEvent, ViewStadiumFacilitiesState> {
  final GetStadiumFacilitiesUsecase getStadiumFacilitiesUsecase;
  final DeleteFacilityUsecase deleteFacilityUsecase;

  ViewStadiumFacilitiesBloc(
      this.getStadiumFacilitiesUsecase, this.deleteFacilityUsecase)
      : super(const ViewStadiumFacilitiesState()) {
    on<LoadStadiumFacilitiesEvent>(_onLoadStadiumFacilities);
    on<DeleteFacilitySubmitted>(_onDeleteFacilitySubmitted);
  }

  Future<void> _onLoadStadiumFacilities(
    LoadStadiumFacilitiesEvent event,
    Emitter<ViewStadiumFacilitiesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final Result<List<FacilityEntity>> result =
        await getStadiumFacilitiesUsecase.execute(event.id);

    if (result is Success<List<FacilityEntity>>) {
      emit(state.copyWith(
        isLoading: false,
        facilities: result.data,
      ));
    } else if (result is Error<List<FacilityEntity>>) {
      emit(state.copyWith(
        isLoading: false,
        facilities: [],
        errorMessage: result.e.toString(),
      ));
    }
  }

  Future<void> _onDeleteFacilitySubmitted(
    DeleteFacilitySubmitted event,
    Emitter<ViewStadiumFacilitiesState> emit,
  ) async {
    emit(state.copyWith(
        isDeleting: true, errorMessage: null, deleteSuccess: false));

    final Result<void> result = await deleteFacilityUsecase.execute(event.id);

    if (result is Success<void>) {
      emit(state.copyWith(isDeleting: false, deleteSuccess: true));
    } else if (result is Error) {
      emit(
          state.copyWith(isDeleting: false, errorMessage: result.e.toString()));
    } else {
      emit(state.copyWith(isDeleting: false, errorMessage: 'Unknown error'));
    }
  }
}
