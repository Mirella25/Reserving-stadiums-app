import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/entities/stadium_owner/stadium_entity.dart';

abstract class StadiumRepository {
  Future<Result<StadiumEntity>> createStadium(
      {required StadiumEntity stadiumEntity, List<File>? photosFiles});
  Future<Result<List<StadiumEntity>>> getStadiumRequests();
}
