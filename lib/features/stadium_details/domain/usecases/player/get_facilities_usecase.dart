
import '../../../../../core/result/result.dart';
import '../../entities/player/facility_entity.dart';
import '../../repositories/player/stadium_details_repo.dart';


class GetFacilitiesUseCase {
  final StadiumDetailsRepository repository;

  GetFacilitiesUseCase(this.repository);

  Future<Result<List<FacilityEntity>>> call(int stadiumId) {
    return repository.getFacilities(stadiumId);
  }
}
