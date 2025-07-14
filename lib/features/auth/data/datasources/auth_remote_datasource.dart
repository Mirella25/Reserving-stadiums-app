
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/models/response/login_models/login_data_model.dart';

import 'package:reserving_stadiums_app/features/auth/domain/entities/login_entity.dart';

import '../../../../core/network/api_client.dart';
import '../models/request/login_request_model.dart';
import '../models/response/login_models/login_response_model.dart';


abstract class AuthRemoteDataSource {
  Future<Result<LoginEntity>> login(String email, String password);
  Future<Result<LoginEntity>> loginWithGoogle(String idToken);
}


class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioClient dioClient;

  AuthRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<Result<LoginEntity>> login(String email, String password) {
    final request = LoginRequestModel(email: email, password: password);

    return dioClient.callApi<LoginEntity>(
      endpoint: 'login',
      data: request.toJson(),
      fromJson: (json) => LoginResponseModel.fromJson(json).data.toEntity(),
    );
  }

  @override
  Future<Result<LoginEntity>> loginWithGoogle(String idToken) {
    return dioClient.callApi<LoginEntity>(
      endpoint: 'login/google-mobile',
      data: {
        'id_token': idToken,
      },
      fromJson: (json) => LoginResponseModel.fromJson(json).data.toEntity(),
    );
  }
}