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
}
