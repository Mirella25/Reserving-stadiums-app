import 'package:reserving_stadiums_app/core/result/result.dart';

import '../entities/stadium_time_entity.dart';


abstract class BookingRepository {
  Future<Result<List<StadiumTimeEntity>>> getStadiumTimes(int stadiumId);
}
