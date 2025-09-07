import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';

import '../../../domain/entities/stadium_owner/stadium_entity.dart';
import '../../../domain/repositories/stadium_owner/stadium_repository.dart';
import '../../datasources/stadium_owner/stadium_remote_datasource.dart';

class StadiumRepositoryImpl extends StadiumRepository {
  final StadiumRemoteDataSource stadiumRemoteDataSource;

  StadiumRepositoryImpl({required this.stadiumRemoteDataSource});
  @override
  Future<Result<StadiumEntity>> createStadium(
      {required StadiumEntity stadiumEntity, List<File>? photosFiles}) async {
    return await stadiumRemoteDataSource.createStadium(
        stadium: stadiumEntity, photosFiles: photosFiles);
  }

  @override
  Future<Result<List<StadiumEntity>>> getStadiumRequests() async {
    return await stadiumRemoteDataSource.getStadiumRequests();
  }

  @override
  Future<Result<void>> deleteStadiumRequest(int id) async {
    return await stadiumRemoteDataSource.deleteStadiumRequest(id);
  }

  @override
  Future<Result<List<StadiumEntity>>> getAllStadiums() async {
    return await stadiumRemoteDataSource.getAllStadiums();
  }

  @override
  Future<Result<StadiumEntity>> getStadiumDetails(int id) async {
    return await stadiumRemoteDataSource.getStadiumDetails(id);
  }

  @override
  Future<Result<void>> deleteStadium(int id) async {
    return await stadiumRemoteDataSource.deleteStadium(id);
  }

  @override
  Future<Result<StadiumEntity>> updateStadium(
      {required StadiumEntity stadiumEntity,
      List<File>? photosFiles,
      required int id}) async {
    return await stadiumRemoteDataSource.updateStadium(
        stadium: stadiumEntity, photosFiles: photosFiles, id: id);
  }

  @override
  Future<Result<StadiumEntity>> getStadiumRequestDetails(int id) async {
    return await stadiumRemoteDataSource.getStadiumRequestDetails(id);
  }

  @override
  Future<Result<String>> generateStadiumSlots(int id) async {
    return await stadiumRemoteDataSource.generateStadiumSlots(id);
  }
}
