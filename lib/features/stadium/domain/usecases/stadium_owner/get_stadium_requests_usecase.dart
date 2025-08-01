import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/repositories/stadium_owner/stadium_repository.dart';

class GetStadiumRequestsUsecase {
  final StadiumRepository stadiumRepository;

  GetStadiumRequestsUsecase({required this.stadiumRepository});
  Future<Result<List<StadiumEntity>>> execute() {
    return stadiumRepository.getStadiumRequests();
  }
}
