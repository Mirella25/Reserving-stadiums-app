import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<Result<ProfileEntity>> createProfile(
      {required ProfileEntity profile, File? avatarFile});
}
