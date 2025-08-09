abstract class BookingTimesEvent {}

class LoadBookingTimesEvent extends BookingTimesEvent {
  final int stadiumId;

  LoadBookingTimesEvent(this.stadiumId);
}
