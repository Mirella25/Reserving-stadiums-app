import '../../domain/entities/stadium_time_entity.dart';

abstract class BookingTimesState {}

class BookingTimesInitial extends BookingTimesState {}

class BookingTimesLoading extends BookingTimesState {}

class BookingTimesLoaded extends BookingTimesState {
  final List<StadiumTimeEntity> times;

  BookingTimesLoaded(this.times);
}

class BookingTimesError extends BookingTimesState {
  final String message;

  BookingTimesError(this.message);
}

