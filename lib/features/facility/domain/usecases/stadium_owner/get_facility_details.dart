import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';

import '../../repositories/stadium_owner/facility_repository.dart';

class GetFacilityDetailsUsecase {
  final FacilityRepository facilityRepository;

  GetFacilityDetailsUsecase({required this.facilityRepository});
  Future<Result<FacilityEntity>> execute(int id) {
    return facilityRepository.getFacilityDetails(id);
  }
}
