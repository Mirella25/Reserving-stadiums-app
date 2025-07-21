import 'dart:io';

import 'package:dio/dio.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/profile/data/models/response/create_profile/create_profile_data_model.dart';
import 'package:reserving_stadiums_app/features/profile/data/models/response/create_profile/create_profile_response_model.dart';
import '../../../../core/network/api_client.dart';
import '../models/request/create_profile_request_model.dart';

import '../../domain/entities/profile_entity.dart';

abstract class ProfileRemoteDataSource {
  Future<Result<ProfileEntity>> createProfile({
    required ProfileEntity profile,
    File? avatarFile,
  });
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
}
