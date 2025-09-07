import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';

import '../../repositories/stadium_owner/facility_repository.dart';

class GetStadiumFacilitiesUsecase {
  final FacilityRepository facilityRepository;

  GetStadiumFacilitiesUsecase({required this.facilityRepository});
  Future<Result<List<FacilityEntity>>> execute(int id) {
    return facilityRepository.getStadiumFacilities(id);
  }
}
