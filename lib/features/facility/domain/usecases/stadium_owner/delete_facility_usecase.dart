import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/facility/domain/repositories/stadium_owner/facility_repository.dart';

class DeleteFacilityUsecase {
  final FacilityRepository facilityRepository;

  DeleteFacilityUsecase({required this.facilityRepository});
  Future<Result<void>> execute(int id) {
    return facilityRepository.deleteFacility(id);
  }
}
