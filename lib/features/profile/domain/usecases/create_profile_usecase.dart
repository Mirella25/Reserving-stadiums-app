import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_entity.dart';
import 'package:reserving_stadiums_app/features/profile/domain/repositories/profile_repository.dart';

class CreateProfileUsecase {
  final ProfileRepository repository;
  CreateProfileUsecase(this.repository);
  Future<Result<ProfileEntity>> execute(
      {required ProfileEntity profile, File? avatarFile}) {
    return repository.createProfile(profile: profile, avatarFile: avatarFile);
  }
}
