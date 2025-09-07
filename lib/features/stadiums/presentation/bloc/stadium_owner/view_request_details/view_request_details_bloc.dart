import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/usecases/stadium_owner/get_stadium_request_details_usecase.dart';

part 'view_request_details_event.dart';
part 'view_request_details_state.dart';

class ViewStadiumRequestDetailsBloc extends Bloc<ViewStadiumRequestDetailsEvent,
    ViewStadiumRequestDetailsState> {
  final GetStadiumRequestDetailsUsecase getStadiumRequestDetailsUsecase;

  ViewStadiumRequestDetailsBloc(this.getStadiumRequestDetailsUsecase)
      : super(const ViewStadiumRequestDetailsState()) {
    on<LoadStadiumRequestDetailsEvent>(_onLoadDetails);
  }

  Future<void> _onLoadDetails(LoadStadiumRequestDetailsEvent event,
      Emitter<ViewStadiumRequestDetailsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    final Result<StadiumEntity> res =
        await getStadiumRequestDetailsUsecase.execute(event.id);
    if (res is Success<StadiumEntity>) {
      emit(state.copyWith(isLoading: false, stadium: res.data));
    } else if (res is Error<StadiumEntity>) {
      emit(state.copyWith(isLoading: false, errorMessage: res.e.toString()));
    }
  }
}
