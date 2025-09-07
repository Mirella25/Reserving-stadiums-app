import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';

import '../../entities/stadium_owner/stadium_entity.dart';
import '../../repositories/stadium_owner/stadium_repository.dart';

class UpdateStadiumUsecase {
  final StadiumRepository stadiumRepository;

  UpdateStadiumUsecase({required this.stadiumRepository});
  Future<Result<StadiumEntity>> execute(
      {required StadiumEntity stadiumEntity,
      List<File>? photosFiles,
      required int id}) {
    return stadiumRepository.updateStadium(
        stadiumEntity: stadiumEntity, photosFiles: photosFiles, id: id);
  }
}
