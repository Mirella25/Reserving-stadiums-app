import 'package:reserving_stadiums_app/core/network/api_client.dart';
import '../../../../core/result/result.dart';
import '../../domain/entities/booking_entity.dart';
import '../models/request/create_booking_request.dart';
import '../models/response/booking_response_model.dart';
import '../models/response/stadium_time_model.dart';
import '../../domain/entities/stadium_time_entity.dart';

abstract class BookingRemoteDataSource {
  Future<Result<List<StadiumTimeEntity>>> getStadiumSlots(int stadiumId);
  Future<Result<BookingEntity>> createBooking(CreateBookingRequest req);
}

class BookingRemoteDataSourceImpl implements BookingRemoteDataSource {
  final DioClient dioClient;

  BookingRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<Result<List<StadiumTimeEntity>>> getStadiumSlots(int stadiumId) async {
    final result = await dioClient.callApi<List<StadiumTimeModel>>(
      endpoint: '/stadium-slots/stadium/$stadiumId', // تأكد إن baseUrl فيه /api/ إذا لزم
      method: 'GET',
      // fromJson بياخد الـ JSON الكامل وبيفك منه data
      fromJson: (json) {
        final raw = json['data'];
        if (raw is List) {
          return raw
              .map((e) => StadiumTimeModel.fromJson(e))
              .toList();
        }
        // لو رجع شكل غير متوقّع
        return <StadiumTimeModel>[];
      },
    );

    if (result is Success<List<StadiumTimeModel>>) {
      return Success(
        data: result.data.map((m) => m.toEntity()).toList(),
      );
    } else if (result is Error<List<StadiumTimeModel>>) {
      print("❌ Dio error: ${result.e}");
      return Error(e: result.e);
    } else {
      return  Error(e: 'Unexpected error');
    }
  }


  @override
  Future<Result<BookingEntity>> createBooking(CreateBookingRequest req) async {
    final res = await dioClient.callApi<BookingResponseModel>(
      endpoint: '/Booking/create',
      method: 'POST',
      data: req.toJson(),
      fromJson: (json) => BookingResponseModel.fromJson(
        (json['data'] ?? {}) as Map<String, dynamic>,
      ),
    );

    if (res is Success<BookingResponseModel>) {
      return Success<BookingEntity>(data: res.data.toEntity());
    } else if (res is ConnectionError<BookingResponseModel>) {
      return ConnectionError<BookingEntity>();
    } else if (res is Error<BookingResponseModel>) {
      return Error<BookingEntity>(e: res.e);
    }
    return Error<BookingEntity>(e: 'Unexpected error');
  }
}
