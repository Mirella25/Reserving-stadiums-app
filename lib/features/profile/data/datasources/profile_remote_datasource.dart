import 'dart:io';

import 'package:dio/dio.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/profile/data/models/response/create_profile/create_profile_data_model.dart';
import 'package:reserving_stadiums_app/features/profile/data/models/response/create_profile/create_profile_response_model.dart';
import '../../../../core/network/api_client.dart';
import '../../domain/entities/profile_details_entity.dart';
import '../models/profile_model.dart';
import '../models/request/create_profile_request_model.dart';

import '../../domain/entities/profile_entity.dart';
import '../models/request/profile_update_request.dart';

abstract class ProfileRemoteDataSource {
  Future<Result<ProfileEntity>> createProfile({
    required ProfileEntity profile,
    File? avatarFile,
  });
  Future<Result<ProfileDetailsEntity>> getProfileDetails({
    required int profileId,
  });
  Future<Result<ProfileDetailsEntity>> updateProfile(int id, ProfileUpdateRequest req); // ✅ جديد

}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final DioClient dioClient;
  final AuthLocalDataSource local;
  ProfileRemoteDataSourceImpl({required this.local, required this.dioClient});

  @override
  Future<Result<ProfileEntity>> createProfile({
    required ProfileEntity profile,
    File? avatarFile,
  }) async {
    final request = CreateProfileRequestModel(
        address: profile.address,
        birthdate: profile.birthdate,
        emergencyContactInformation: profile.emergencyContactInformation,
        extraNotes: profile.extraNotes,
        firstName: profile.firstName,
        lastName: profile.lastName,
        gender: profile.gender,
        height: profile.height,
        weight: profile.weight,
        injuries: profile.injuries,
        mine: profile.mine,
        notableAchievements: profile.notableAchievements,
        phoneNumber: profile.phoneNumber,
        positionsPlayed: profile.positionsPlayed,
        previousTeams: profile.previousTeams,
        sport: profile.sport,
        yearsOfExperience: profile.yearsOfExperience);
    final form = FormData();
    form.fields.addAll(
      request
          .toJsonNonNull()
          .entries
          .map((e) => MapEntry(e.key, e.value.toString())),
    );
    if (avatarFile != null) {
      form.files.add(
        MapEntry(
          'avatar',
          await MultipartFile.fromFile(
            avatarFile.path,
            filename: avatarFile.path.split(Platform.pathSeparator).last,
          ),
        ),
      );
    }
    return dioClient.callApi<ProfileEntity>(
      endpoint: 'profile/create',
      data: form,
      requiresAuth: true,
      token: await local.getCachedToken(),
      fromJson: (json) =>
          CreateProfileResponseModel.fromJson(json).data.profile.toEntity(),
    );
  }


  @override
  Future<Result<ProfileDetailsEntity>> getProfileDetails({
    required int profileId,
  }) async {
    return dioClient.callApi<ProfileDetailsEntity>(
      endpoint: 'profile/view/$profileId',
      requiresAuth: true,
      token: await local.getCachedToken(),
      method: 'GET',
      fromJson: (json) {
        final data = json['data'] as Map<String, dynamic>?;
        final map = data?['profile'] as Map<String, dynamic>?;
        if (map == null) throw Exception('No profile found');
        final model = ProfileModel.fromJson(map);
        return model.toDetailsEntity();
      },
    );
  }

  @override
  Future<Result<ProfileDetailsEntity>> updateProfile(int id, ProfileUpdateRequest req) async{
    // Laravel: PUT/PATCH حسب مسارك — عندك: /api/profile/update/{id}
    return dioClient.callApi<ProfileDetailsEntity>(
    endpoint: 'profile/update/$id',
      requiresAuth: true,
      method: 'PUT',
      token: await local.getCachedToken(),
      data: req.toJson(), // فقط non-null
      fromJson: (json) {
        // إذا الباك بيرجع الـ profile كامل داخل data
        final data = json['data'];
        final prof = (data is Map && data['profile'] is Map) ? data['profile'] : data;
        return ProfileModel.fromJson(Map<String, dynamic>.from(prof as Map))
            .toDetailsEntity();
      },
    );
  }
}
