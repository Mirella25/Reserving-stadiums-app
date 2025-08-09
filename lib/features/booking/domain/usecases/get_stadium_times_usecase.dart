import 'package:reserving_stadiums_app/core/result/result.dart';
import '../entities/stadium_time_entity.dart';
import '../repositories/booking_repository.dart';

class GetStadiumTimesUseCase {
  final BookingRepository repository;

  GetStadiumTimesUseCase(this.repository);

  Future<Result<List<StadiumTimeEntity>>> call(int stadiumId) {
    return repository.getStadiumTimes(stadiumId);
  }
}
