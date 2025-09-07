import 'dart:io';

import 'package:dio/dio.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/create_facility/request/create_facility_request_model.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/create_facility/response/create_facility_response_data_model.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/create_facility/response/create_facility_response_model.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/delete_facility/delete_facility_model.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/get_facility_details/get_facility_details_response_data_model.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/get_facility_details/get_facility_details_response_model.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/get_stadium_facilities/get_stadium_facilities_data_response_model.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/get_stadium_facilities/get_stadium_facilities_response_model.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/update_facility/request/update_facility_request_model.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/update_facility/response/update_facility_response_data_model.dart';
import 'package:reserving_stadiums_app/features/facility/data/models/stadium_owner/update_facility/response/update_facility_response_model.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';

import '../../../../../core/network/api_client.dart';

abstract class FacilityRemoteDataSource {
  Future<Result<FacilityEntity>> createFacility({
    required FacilityEntity facility,
    List<File>? photosFiles,
  });

  Future<Result<List<FacilityEntity>>> getStadiumFacilities(int id);
  Future<Result<FacilityEntity>> getFacilityDetails(int id);
  Future<Result<void>> deleteFacility(int id);
  Future<Result<FacilityEntity>> updateFacility(
      {required FacilityEntity facility,
      List<File>? photosFiles,
      required int id});
}

class FacilityRemoteDataSourceImpl implements FacilityRemoteDataSource {
  final DioClient dioClient;
  final AuthLocalDataSource local;
  FacilityRemoteDataSourceImpl({required this.local, required this.dioClient});

  @override
  Future<Result<FacilityEntity>> createFacility({
    required FacilityEntity facility,
    List<File>? photosFiles,
  }) async {
    final request = CreateFacilityRequestModel(
        stadiumId: facility.stadiumId,
        name: facility.name,
        quantity: facility.quantity);
    final form = FormData();
    form.fields.addAll(
      request
          .toJsonNonNull()
          .entries
          .map((e) => MapEntry(e.key, e.value.toString())),
    );
    if (photosFiles != null && photosFiles.isNotEmpty) {
      form.files.addAll(
        photosFiles.map(
          (file) => MapEntry(
            'photos[]',
            MultipartFile.fromFileSync(
              file.path,
              filename: file.path.split(Platform.pathSeparator).last,
            ),
          ),
        ),
      );
    }
    return dioClient.callApi<FacilityEntity>(
        endpoint: 'facilities/create',
        data: form,
        method: 'POST',
        requiresAuth: true,
        token: await local.getCachedToken(),
        fromJson: (json) => CreateFacilityResponseModel.fromJson(json)
            .data
            .facility
            .toEntity());
  }

  @override
  Future<Result<List<FacilityEntity>>> getStadiumFacilities(int id) async {
    return dioClient.callApi<List<FacilityEntity>>(
        endpoint: "facilities/viewall/$id",
        fromJson: (json) {
          // تأكدنا من نوع json لأن بعض الـ clients يرجع dynamic
          final Map<String, dynamic> map = json as Map<String, dynamic>;
          final model = GetStadiumFacilitiesResponseModel.fromJson(map);

          // model.data.facilities هو List<GetStadiumFacilitiesDataResponseModel>
          final List<FacilityEntity> facilities =
              model.data.facilities.map((m) => m.toEntity()).toList();

          // (اختياري) للطباعة debugging
          // print('facilities count: ${facilities.length}');

          return facilities;
        },
        method: 'GET',
        requiresAuth: true,
        token: await local.getCachedToken());
  }

  @override
  Future<Result<FacilityEntity>> getFacilityDetails(int id) async {
    return dioClient.callApi<FacilityEntity>(
        endpoint: "facilities/view/$id",
        fromJson: (json) {
          final model = GetFacilityDetailsResponseModel.fromJson(json);
          print(model.data);
          return model.data.facility.toEntity();
        },
        method: 'GET',
        requiresAuth: true,
        token: await local.getCachedToken());
  }

  @override
  Future<Result<void>> deleteFacility(int id) async {
    return dioClient.callApi(
        endpoint: "facilities/delete/$id",
        fromJson: (json) {
          final model = DeleteFacilityModel.fromJson(json);
          print(model.message);
          return null;
        },
        method: 'DELETE',
        requiresAuth: true,
        token: await local.getCachedToken());
  }

  @override
  Future<Result<FacilityEntity>> updateFacility(
      {required FacilityEntity facility,
      List<File>? photosFiles,
      required int id}) async {
    final request = UpdateFacilityRequestModel(
        stadiumId: facility.stadiumId,
        name: facility.name,
        quantity: facility.quantity);
    final form = FormData();
    form.fields.addAll(
      request
          .toJsonNonNull()
          .entries
          .map((e) => MapEntry(e.key, e.value.toString())),
    );
    if (photosFiles != null && photosFiles.isNotEmpty) {
      form.files.addAll(
        photosFiles.map(
          (file) => MapEntry(
            'photos[]',
            MultipartFile.fromFileSync(
              file.path,
              filename: file.path.split(Platform.pathSeparator).last,
            ),
          ),
        ),
      );
    }
    return dioClient.callApi<FacilityEntity>(
        endpoint: 'facilities/update/$id',
        data: form,
        method: 'POST',
        requiresAuth: true,
        token: await local.getCachedToken(),
        fromJson: (json) => UpdateFacilityResponseModel.fromJson(json)
            .data
            .facility
            .toEntity());
  }
}
