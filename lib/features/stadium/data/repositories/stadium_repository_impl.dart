import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadium/data/datasources/stadium_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/entities/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/repositories/stadium_repository.dart';

class StadiumRepositoryImpl extends StadiumRepository {
  final StadiumRemoteDataSource stadiumRemoteDataSource;

  StadiumRepositoryImpl({required this.stadiumRemoteDataSource});
  @override
  Future<Result<StadiumEntity>> createStadium(
      {required StadiumEntity stadiumEntity, List<File>? photosFiles}) async {
    return await stadiumRemoteDataSource.createStadium(
        stadium: stadiumEntity, photosFiles: photosFiles);
  }
}
