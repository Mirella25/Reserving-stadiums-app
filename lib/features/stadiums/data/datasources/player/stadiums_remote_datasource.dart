import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/player/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadiums/data/models/player/stadium_model.dart';
import 'package:reserving_stadiums_app/core/network/api_client.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';

abstract class StadiumsRemoteDatasource {
  Future<Result<List<StadiumEntity>>> getAllStadiums();
}

class StadiumsRemoteDatasourceImpl extends StadiumsRemoteDatasource {
  final DioClient dioClient;

  StadiumsRemoteDatasourceImpl(this.dioClient);

  @override
  Future<Result<List<StadiumEntity>>> getAllStadiums() async {
    try {
      // ✅ جلب التوكن من التخزين المحلي
      final token = await getIt<AuthLocalDataSource>().getCachedToken();

      return await dioClient.callApi<List<StadiumEntity>>(
        endpoint: 'stadium/viewall',
        method: 'GET',
        requiresAuth: true,
        token: token,
        fromJson: (json) {
          final stadiumsJson = json['data']['Stadiums'] as List<dynamic>;
          return stadiumsJson
              .map((item) => StadiumModel.fromJson(item).toEntity())
              .toList();
        },
      );
    } catch (e) {
      return Error<List<StadiumEntity>>(e: e.toString());
    }
  }
}
