import 'package:reserving_stadiums_app/features/booking/data/models/request/create_booking_request.dart';

import 'package:reserving_stadiums_app/features/booking/domain/entities/booking_entity.dart';

import '../../../../core/result/result.dart';
import '../../domain/entities/stadium_time_entity.dart';
import '../../domain/repositories/booking_repository.dart';
import '../datasources/stadium_booking_remote_datasource.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteDataSource remoteDataSource;

  BookingRepositoryImpl(this.remoteDataSource);

  @override
  Future<Result<List<StadiumTimeEntity>>> getStadiumTimes(int stadiumId) {
    return remoteDataSource.getStadiumSlots(stadiumId);
  }

  @override
  Future<Result<BookingEntity>> createBooking(CreateBookingRequest req) {
  return remoteDataSource.createBooking(req);
  }
}