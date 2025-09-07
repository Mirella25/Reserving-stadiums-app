import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_entity.dart';

import '../../data/models/request/profile_update_request.dart';
import '../entities/profile_brief_entity.dart';
import '../entities/profile_details_entity.dart';

abstract class ProfileRepository {
  Future<Result<ProfileEntity>> createProfile(
      {required ProfileEntity profile, File? avatarFile});
  Future<Result<ProfileDetailsEntity>> getProfileDetails(int profileId);
  Future<Result<ProfileDetailsEntity>> updateProfile(int id, ProfileUpdateRequest req); // ✅
  Future<Result<List<ProfileBriefEntity>>> getAllProfiles({int page, int perPage});
}
