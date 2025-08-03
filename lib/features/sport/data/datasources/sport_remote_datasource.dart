// lib/features/stadium/data/datasources/sport_remote_datasource.dart
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/sport/data/models/sport_model.dart';
import '../../../../core/network/api_client.dart';
import '../models/sports_response_model.dart';
import '../../domain/entities/sport_entity.dart';

abstract class SportRemoteDataSource {
  Future<Result<List<SportEntity>>> getSports();
}

class SportRemoteDataSourceImpl implements SportRemoteDataSource {
  final DioClient dioClient;
  final AuthLocalDataSource local;
  SportRemoteDataSourceImpl(this.dioClient, this.local);

  @override
  Future<Result<List<SportEntity>>> getSports() async {
    return dioClient.callApi<List<SportEntity>>(
      endpoint: 'sport/viewall',
      method: 'GET',
      requiresAuth: true,
      token: await local.getCachedToken(),
      fromJson: (json) {
        final model = SportsResponseModel.fromJson(json);
        return model.data.sports.map((e) => e.toEntity()).toList();
      },
    );
  }
}
