class BookingEntity {
  final int id;
  final int stadiumSlotId;
  final int userId;
  final String date;     // "YYYY-M-D"
  final int stadiumId;
  final String status;   // booked / pending ...

  const BookingEntity({
    required this.id,
    required this.stadiumSlotId,
    required this.userId,
    required this.date,
    required this.stadiumId,
    required this.status,
  });
}
