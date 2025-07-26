import 'dart:io';

import 'package:dio/dio.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';

import 'package:reserving_stadiums_app/features/stadium/data/models/request/create_stadium_request_model.dart';
import 'package:reserving_stadiums_app/features/stadium/data/models/response/create_stadium_data_respone_model.dart';
import 'package:reserving_stadiums_app/features/stadium/data/models/response/create_stadium_response_model.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/entities/stadium_entity.dart';
import '../../../../core/network/api_client.dart';

abstract class StadiumRemoteDataSource {
  Future<Result<StadiumEntity>> createStadium({
    required StadiumEntity stadium,
    List<File>? photosFiles,
  });
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
}
