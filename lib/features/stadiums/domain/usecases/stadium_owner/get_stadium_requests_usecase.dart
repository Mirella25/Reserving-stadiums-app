import 'package:reserving_stadiums_app/core/result/result.dart';

import '../../entities/stadium_owner/stadium_entity.dart';
import '../../repositories/stadium_owner/stadium_repository.dart';


class GetStadiumRequestsUsecase {
  final StadiumRepository stadiumRepository;

  GetStadiumRequestsUsecase({required this.stadiumRepository});
  Future<Result<List<StadiumEntity>>> execute() {
    return stadiumRepository.getStadiumRequests();
  }
}
