import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';

import '../../repositories/stadium_owner/facility_repository.dart';

class CreateFacilityUsecase {
  final FacilityRepository facilityRepository;

  CreateFacilityUsecase({required this.facilityRepository});
  Future<Result<FacilityEntity>> execute({
    required FacilityEntity facilityEntity,
    List<File>? photosFiles,
  }) {
    return facilityRepository.createFacility(
        facilityEntity: facilityEntity, photosFiles: photosFiles);
  }
}
