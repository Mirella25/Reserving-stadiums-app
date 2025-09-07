import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';
import 'package:reserving_stadiums_app/features/facility/domain/usecases/stadium_owner/get_facility_details.dart';

part 'view_facility_details_event.dart';
part 'view_facility_details_state.dart';

class ViewFacilityDetailsBloc
    extends Bloc<ViewFacilityDetailsEvent, ViewFacilityDetailsState> {
  final GetFacilityDetailsUsecase getFacilityDetailsUsecase;

  ViewFacilityDetailsBloc(this.getFacilityDetailsUsecase)
      : super(const ViewFacilityDetailsState()) {
    on<LoadFacilityDetailsEvent>(_onLoadDetails);
  }

  Future<void> _onLoadDetails(LoadFacilityDetailsEvent event,
      Emitter<ViewFacilityDetailsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    final Result<FacilityEntity> res =
        await getFacilityDetailsUsecase.execute(event.id);
    if (res is Success<FacilityEntity>) {
      emit(state.copyWith(isLoading: false, facility: res.data));
    } else if (res is Error<FacilityEntity>) {
      emit(state.copyWith(isLoading: false, errorMessage: res.e.toString()));
    }
  }
}
