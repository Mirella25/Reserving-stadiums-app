import 'dart:io';

import 'package:dio/dio.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/add_stadium/response/create_stadium_data_respone_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/add_stadium/response/create_stadium_response_model.dart';

import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/add_stadium/request/create_stadium_request_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/delete_stadium/delete_stadium_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/delete_stadium_request/delete_stadium_request_response_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/generate_stadium_slots/generate_stadium_slots_response_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_all_stadiums/get_all_stadiums_data_response_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_all_stadiums/get_all_stadiums_response_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_stadium_details/get_stadium_details_data_response.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_stadium_details/get_stadium_details_response_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_stadium_request_details/get_stadium_request_details_data_response_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_stadium_request_details/get_stadium_request_details_response_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_stadium_requests/response/get_stadium_requests_data_response.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_stadium_requests/response/get_stadium_requests_response.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/update_stadium/request/update_stadium_request_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/update_stadium/response/update_stadium_data_response_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/update_stadium/response/update_stadium_response_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';
import '../../../../../core/network/api_client.dart';

abstract class StadiumRemoteDataSource {
  Future<Result<StadiumEntity>> createStadium({
    required StadiumEntity stadium,
    List<File>? photosFiles,
  });
  Future<Result<List<StadiumEntity>>> getStadiumRequests();
  Future<Result<void>> deleteStadiumRequest(int id);
  Future<Result<List<StadiumEntity>>> getAllStadiums();
  Future<Result<StadiumEntity>> getStadiumDetails(int id);
  Future<Result<void>> deleteStadium(int id);
  Future<Result<StadiumEntity>> updateStadium(
      {required StadiumEntity stadium,
      List<File>? photosFiles,
      required int id});
  Future<Result<StadiumEntity>> getStadiumRequestDetails(int id);
  Future<Result<String>> generateStadiumSlots(int id);
}

class StadiumRemoteDataSourceImpl implements StadiumRemoteDataSource {
  final DioClient dioClient;
  final AuthLocalDataSource local;
  StadiumRemoteDataSourceImpl({required this.local, required this.dioClient});

  @override
  Future<Result<StadiumEntity>> createStadium({
    required StadiumEntity stadium,
    List<File>? photosFiles,
  }) async {
    final request = CreateStadiumRequestModel(
        sportId: stadium.sportId,
        name: stadium.name,
        location: stadium.location,
        description: stadium.description,
        length: stadium.length,
        width: stadium.width,
        ownerNumber: stadium.ownerNumber,
        startTime: stadium.startTime,
        latitude: stadium.latitude,
        longitude: stadium.longitude,
        endTime: stadium.endTime,
        deposit: stadium.deposit,
        duration: stadium.duration,
        price: stadium.price);
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
    return dioClient.callApi<StadiumEntity>(
        endpoint: 'stadium/addrequest',
        data: form,
        method: 'POST',
        requiresAuth: true,
        token: await local.getCachedToken(),
        fromJson: (json) =>
            CreateStadiumResponseModel.fromJson(json).data.toEntity());
  }

  @override
  Future<Result<List<StadiumEntity>>> getStadiumRequests() async {
    return dioClient.callApi<List<StadiumEntity>>(
        endpoint: "stadium/view_my_asks",
        fromJson: (json) {
          final model = GetStadiumRequestsResponse.fromJson(json);
          print(model.data);
          return model.data.map((m) => m.toEntity()).toList();
        },
        method: 'GET',
        requiresAuth: true,
        token: await local.getCachedToken());
  }

  @override
  Future<Result<void>> deleteStadiumRequest(int id) async {
    return dioClient.callApi(
        endpoint: "stadium/deleteRequest/$id",
        fromJson: (json) {
          final model = DeleteStadiumRequestResponseModel.fromJson(json);
          return null;
        },
        method: 'DELETE',
        requiresAuth: true,
        token: await local.getCachedToken());
  }

  @override
  Future<Result<List<StadiumEntity>>> getAllStadiums() async {
    return dioClient.callApi<List<StadiumEntity>>(
        endpoint: "stadium/view_my_stadium",
        fromJson: (json) {
          final model = GetAllStadiumsResponseModel.fromJson(json);
          print(model.data);
          return model.data.map((m) => m.toEntity()).toList();
        },
        method: 'GET',
        requiresAuth: true,
        token: await local.getCachedToken());
  }

  @override
  Future<Result<StadiumEntity>> getStadiumDetails(int id) async {
    return dioClient.callApi<StadiumEntity>(
        endpoint: "stadium/view/$id",
        fromJson: (json) {
          final model = GetStadiumDetailsResponseModel.fromJson(json);
          print(model.data);
          return model.data.stadium.toEntity();
        },
        method: 'GET',
        requiresAuth: true,
        token: await local.getCachedToken());
  }

  @override
  Future<Result<void>> deleteStadium(int id) async {
    return dioClient.callApi(
        endpoint: "stadium/delete/$id",
        fromJson: (json) {
          final model = DeleteStadiumModel.fromJson(json);
          return null;
        },
        method: 'DELETE',
        requiresAuth: true,
        token: await local.getCachedToken());
  }

  @override
  Future<Result<StadiumEntity>> updateStadium(
      {required StadiumEntity stadium,
      List<File>? photosFiles,
      required int id}) async {
    final request = UpdateStadiumRequestModel(
        sportId: stadium.sportId,
        name: stadium.name,
        location: stadium.location,
        description: stadium.description,
        length: stadium.length,
        width: stadium.width,
        ownerNumber: stadium.ownerNumber,
        startTime: stadium.startTime,
        latitude: stadium.latitude,
        longitude: stadium.longitude,
        endTime: stadium.endTime,
        deposit: stadium.deposit,
        duration: stadium.duration,
        price: stadium.price
    );
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
    return dioClient.callApi<StadiumEntity>(
        endpoint: 'stadium/update/$id',
        data: form,
        method: 'POST',
        requiresAuth: true,
        token: await local.getCachedToken(),
        fromJson: (json) =>
            UpdateStadiumResponseModel.fromJson(json).data.stadium.toEntity());
  }

  @override
  Future<Result<StadiumEntity>> getStadiumRequestDetails(int id) async {
    return dioClient.callApi<StadiumEntity>(
        endpoint: "stadium/viewRequest/$id",
        fromJson: (json) {
          final model = GetStadiumRequestDetailsResponseModel.fromJson(json);
          print(model.data);
          return model.data.toEntity();
        },
        method: 'GET',
        requiresAuth: true,
        token: await local.getCachedToken());
  }

  @override
  Future<Result<String>> generateStadiumSlots(int id) async {
    return dioClient.callApi(
        endpoint: "stadium-slots/generate/$id",
        fromJson: (json) {
          return GenerateStadiumSlotsResponseModel.fromJson(json)
              .message
              .toString();
        },
        method: 'POST',
        requiresAuth: true,
        token: await local.getCachedToken());
  }
}
