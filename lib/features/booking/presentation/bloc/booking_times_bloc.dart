import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/result/result.dart';
import '../../domain/entities/stadium_time_entity.dart';
import '../../domain/usecases/get_stadium_times_usecase.dart';
import 'booking_times_event.dart';
import 'booking_times_state.dart';

class BookingTimesBloc extends Bloc<BookingTimesEvent, BookingTimesState> {
  final GetStadiumTimesUseCase getStadiumTimesUseCase;

  BookingTimesBloc(this.getStadiumTimesUseCase) : super(BookingTimesInitial()) {
    on<LoadBookingTimesEvent>(_onLoadTimes);
  }

  Future<void> _onLoadTimes(
      LoadBookingTimesEvent event,
      Emitter<BookingTimesState> emit,
      ) async {
    emit(BookingTimesLoading());

    final result = await getStadiumTimesUseCase(event.stadiumId);
    print("Result: $result");

    if (result is Success<List<StadiumTimeEntity>>) {
      emit(BookingTimesLoaded(result.data));
    } else if (result is Error<List<StadiumTimeEntity>>) {
      emit(BookingTimesError(result.e.toString()));
    } else {
      emit(BookingTimesError("Connection Error"));
    }
  }
}
