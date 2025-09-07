import 'dart:io';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:reserving_stadiums_app/features/profile/data/models/request/profile_update_request.dart';
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_details_entity.dart';
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_entity.dart';
import 'package:reserving_stadiums_app/features/profile/domain/repositories/profile_repository.dart';

import '../../domain/entities/profile_brief_entity.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final ProfileRemoteDataSource profileRemoteDataSource;

  ProfileRepositoryImpl({required this.profileRemoteDataSource});
  @override
  Future<Result<ProfileEntity>> createProfile(
      {required ProfileEntity profile, File? avatarFile}) async {
    return await profileRemoteDataSource.createProfile(
        profile: profile, avatarFile: avatarFile);
  }

  @override
  Future<Result<ProfileDetailsEntity>> getProfileDetails(int profileId) {
    return profileRemoteDataSource.getProfileDetails(profileId: profileId);
  }

  @override
  Future<Result<ProfileDetailsEntity>> updateProfile(int id, ProfileUpdateRequest req) =>
      profileRemoteDataSource.updateProfile(id, req);

  @override
  Future<Result<List<ProfileBriefEntity>>> getAllProfiles({int page = 1, int perPage = 30}) {
    return profileRemoteDataSource.getAllProfiles(page: page, perPage: perPage);
  }

}
