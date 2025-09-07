import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/usecases/stadium_owner/get_stadium_details.dart';

part 'view_stadium_details_event.dart';
part 'view_stadium_details_state.dart';

class ViewStadiumDetailsBloc
    extends Bloc<ViewStadiumDetailsEvent, ViewStadiumDetailsState> {
  final GetStadiumOwnerDetailsUsecase getStadiumDetailsUsecase;

  ViewStadiumDetailsBloc(this.getStadiumDetailsUsecase)
      : super(const ViewStadiumDetailsState()) {
    on<LoadStadiumDetailsEvent>(_onLoadDetails);
  }

  Future<void> _onLoadDetails(LoadStadiumDetailsEvent event,
      Emitter<ViewStadiumDetailsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    final Result<StadiumEntity> res =
        await getStadiumDetailsUsecase.execute(event.id);
    if (res is Success<StadiumEntity>) {
      emit(state.copyWith(isLoading: false, stadium: res.data));
    } else if (res is Error<StadiumEntity>) {
      emit(state.copyWith(isLoading: false, errorMessage: res.e.toString()));
    }
  }
}
