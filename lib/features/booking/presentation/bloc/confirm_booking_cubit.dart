import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/result/result.dart';
import '../../domain/entities/booking_entity.dart';
import '../../domain/usecases/create_booking_usecase.dart';
import '../../data/models/request/create_booking_request.dart';

abstract class ConfirmBookingState {}
class ConfirmBookingIdle extends ConfirmBookingState {}
class ConfirmBookingLoading extends ConfirmBookingState {}
class ConfirmBookingSuccess extends ConfirmBookingState {
  final BookingEntity booking;
  ConfirmBookingSuccess(this.booking);
}
class ConfirmBookingError extends ConfirmBookingState {
  final String message;
  ConfirmBookingError(this.message);
}

class ConfirmBookingCubit extends Cubit<ConfirmBookingState> {
  final CreateBookingUseCase createBooking;
  ConfirmBookingCubit(this.createBooking) : super(ConfirmBookingIdle());

  Future<void> confirm(CreateBookingRequest req) async {
    emit(ConfirmBookingLoading());
    final res = await createBooking(req);
    if (res is Success<BookingEntity>) {
      emit(ConfirmBookingSuccess(res.data));
    } else if (res is ConnectionError<BookingEntity>) {
      emit(ConfirmBookingError('Connection error'));
    } else if (res is Error<BookingEntity>) {
      emit(ConfirmBookingError(res.e.toString()));
    }
  }
}
