import 'dart:io';

import 'package:dio/dio.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/add_stadium/response/create_stadium_data_respone_model.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/stadium_owner/get_stadium_requests/response/get_stadium_requests_data_response.dart';

import '../../../../../core/network/api_client.dart';

import '../../../domain/entities/stadium_owner/stadium_entity.dart';
import '../../models/stadium_owner/add_stadium/request/create_stadium_request_model.dart';
import '../../models/stadium_owner/add_stadium/response/create_stadium_response_model.dart';
import '../../models/stadium_owner/get_stadium_requests/response/get_stadium_requests_response.dart';

abstract class StadiumRemoteDataSource {
  Future<Result<StadiumEntity>> createStadium({
    required StadiumEntity stadium,
    List<File>? photosFiles,
  });
  Future<Result<List<StadiumEntity>>> getStadiumRequests();
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
      endpoint: 'stadium/addrequest',
      data: form,
      method: 'POST',
      requiresAuth: true,
      token: await local.getCachedToken(),
      fromJson: (json) =>
          CreateStadiumResponseModel.fromJson(json).data.toEntity(),
    );
  }

  @override
  Future<Result<List<StadiumEntity>>> getStadiumRequests() async {
    return dioClient.callApi<List<StadiumEntity>>(
        endpoint: "stadium/viewAllRequest",
        fromJson: (json) {
          final model = GetStadiumRequestsResponse.fromJson(json);
          return model.data.asks.map((m) => m.toEntity()).toList();
        },
        method: 'GET',
        requiresAuth: true,
        token: await local.getCachedToken());
  }
}
