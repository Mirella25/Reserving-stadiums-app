import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/repositories/stadium_owner/stadium_repository.dart';

class CreateStadiumUsecase {
  final StadiumRepository stadiumRepository;

  CreateStadiumUsecase({required this.stadiumRepository});
  Future<Result<StadiumEntity>> execute({
    required StadiumEntity stadiumEntity,
    List<File>? photosFiles,
  }) {
    return stadiumRepository.createStadium(
        stadiumEntity: stadiumEntity, photosFiles: photosFiles);
  }
}
