
import 'package:reserving_stadiums_app/features/stadium_details/domain/repositories/player/stadium_details_repo.dart';

import '../../../../../core/result/result.dart';
import '../../entities/player/stadium_details_entity.dart';


class GetStadiumDetailsUsecase {
  final StadiumDetailsRepository repository;

  GetStadiumDetailsUsecase(this.repository);

  Future<Result<StadiumDetailsEntity>> call(int stadiumId) {
    return repository.getStadiumDetails(stadiumId);
  }
}
