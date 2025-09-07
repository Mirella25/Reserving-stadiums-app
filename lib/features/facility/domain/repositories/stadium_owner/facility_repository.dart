import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';

abstract class FacilityRepository {
  Future<Result<FacilityEntity>> createFacility(
      {required FacilityEntity facilityEntity, List<File>? photosFiles});
  Future<Result<List<FacilityEntity>>> getStadiumFacilities(int id);
  Future<Result<FacilityEntity>> getFacilityDetails(int id);
  Future<Result<void>> deleteFacility(int id);
  Future<Result<FacilityEntity>> updateFacility(
      {required FacilityEntity facilityEntity,
      List<File>? photosFiles,
      required int id});
}
