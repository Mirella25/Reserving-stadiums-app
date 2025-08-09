import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/result/result.dart';
import '../../../domain/entities/player/stadium_details_entity.dart';
import '../../../domain/usecases/player/stadium_details_usecase.dart';
import 'stadium_details_event.dart';
import 'stadium_details_state.dart';


class StadiumDetailsBloc extends Bloc<StadiumDetailsEvent, StadiumDetailsState> {
  final GetStadiumDetailsUsecase getDetailsUsecase;

  StadiumDetailsBloc(this.getDetailsUsecase) : super(const StadiumDetailsState.initial()) {
    on<LoadStadiumDetails>((event, emit) async {
      emit(const StadiumDetailsState.loading());

      final result = await getDetailsUsecase(event.stadiumId);

      if (result is Success<StadiumDetailsEntity>) {
        emit(StadiumDetailsState.loaded(result.data));
      } else if (result is Error<StadiumDetailsEntity>) {
        emit(StadiumDetailsState.error(result.e.toString()));
      } else if (result is ConnectionError<StadiumDetailsEntity>) {
        emit(const StadiumDetailsState.error("Connection error"));
      }

    });
  }
}
