import '../../../../core/result/result.dart';
import '../../data/models/request/create_booking_request.dart';
import '../entities/booking_entity.dart';
import '../repositories/booking_repository.dart';

class CreateBookingUseCase {
  final BookingRepository repo;
  CreateBookingUseCase(this.repo);

  Future<Result<BookingEntity>> call(CreateBookingRequest req) =>
      repo.createBooking(req);
}