import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';

import '../../repositories/stadium_owner/facility_repository.dart';

class UpdateFacilityUsecase {
  final FacilityRepository facilityRepository;

  UpdateFacilityUsecase({required this.facilityRepository});
  Future<Result<FacilityEntity>> execute(
      {required FacilityEntity facilityEntity,
      List<File>? photosFiles,
      required int id}) {
    return facilityRepository.updateFacility(
        facilityEntity: facilityEntity, photosFiles: photosFiles, id: id);
  }
}
