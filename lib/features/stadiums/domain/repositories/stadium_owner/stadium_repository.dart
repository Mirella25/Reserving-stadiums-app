import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';

abstract class StadiumRepository {
  Future<Result<StadiumEntity>> createStadium(
      {required StadiumEntity stadiumEntity, List<File>? photosFiles});
  Future<Result<List<StadiumEntity>>> getStadiumRequests();
  Future<Result<void>> deleteStadiumRequest(int id);
  Future<Result<List<StadiumEntity>>> getAllStadiums();
  Future<Result<StadiumEntity>> getStadiumDetails(int id);
  Future<Result<void>> deleteStadium(int id);
  Future<Result<StadiumEntity>> updateStadium(
      {required StadiumEntity stadiumEntity,
      List<File>? photosFiles,
      required int id});
  Future<Result<StadiumEntity>> getStadiumRequestDetails(int id);
  Future<Result<String>> generateStadiumSlots(int id);
}
