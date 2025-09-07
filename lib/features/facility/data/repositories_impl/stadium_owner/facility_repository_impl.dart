import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/facility/data/datasources/stadium_owner/facility_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';
import 'package:reserving_stadiums_app/features/facility/domain/repositories/stadium_owner/facility_repository.dart';

class FacilityRepositoryImpl extends FacilityRepository {
  final FacilityRemoteDataSource facilityRemoteDataSource;

  FacilityRepositoryImpl({required this.facilityRemoteDataSource});
  @override
  Future<Result<FacilityEntity>> createFacility(
      {required FacilityEntity facilityEntity, List<File>? photosFiles}) async {
    return await facilityRemoteDataSource.createFacility(
        facility: facilityEntity, photosFiles: photosFiles);
  }

  @override
  Future<Result<List<FacilityEntity>>> getStadiumFacilities(int id) async {
    return await facilityRemoteDataSource.getStadiumFacilities(id);
  }

  @override
  Future<Result<FacilityEntity>> getFacilityDetails(int id) async {
    return await facilityRemoteDataSource.getFacilityDetails(id);
  }

  @override
  Future<Result<void>> deleteFacility(int id) async {
    return await facilityRemoteDataSource.deleteFacility(id);
  }

  @override
  Future<Result<FacilityEntity>> updateFacility(
      {required FacilityEntity facilityEntity,
      List<File>? photosFiles,
      required int id}) async {
    return await facilityRemoteDataSource.updateFacility(
        facility: facilityEntity, photosFiles: photosFiles, id: id);
  }
}
