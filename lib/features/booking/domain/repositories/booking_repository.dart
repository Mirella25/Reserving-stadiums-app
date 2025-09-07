import 'package:reserving_stadiums_app/core/result/result.dart';

import '../../data/models/request/create_booking_request.dart';
import '../entities/booking_entity.dart';
import '../entities/stadium_time_entity.dart';


abstract class BookingRepository {
  Future<Result<List<StadiumTimeEntity>>> getStadiumTimes(int stadiumId);
  Future<Result<BookingEntity>> createBooking(CreateBookingRequest req);
}
