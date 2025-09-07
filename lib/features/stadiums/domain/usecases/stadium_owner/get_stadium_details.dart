import 'package:reserving_stadiums_app/core/result/result.dart';

import '../../entities/stadium_owner/stadium_entity.dart';
import '../../repositories/stadium_owner/stadium_repository.dart';

class GetStadiumOwnerDetailsUsecase {
  final StadiumRepository stadiumRepository;

  GetStadiumOwnerDetailsUsecase({required this.stadiumRepository});
  Future<Result<StadiumEntity>> execute(int id) {
    return stadiumRepository.getStadiumDetails(id);
  }
}
