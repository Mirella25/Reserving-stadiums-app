import '../../../../../core/network/api_client.dart';
import '../../../../../core/result/result.dart';
import '../../../domain/entities/player/facility_entity.dart';
import '../../../domain/entities/player/stadium_details_entity.dart';
import '../../models/player/stadium_details_model.dart';
import '../../models/player/facility_model.dart';

abstract class StadiumDetailsRemoteDataSource {
  Future<Result<StadiumDetailsEntity>> getStadiumDetails(int id);
  Future<Result<List<FacilityEntity>>> getFacilities(int stadiumId);
}

class StadiumDetailsRemoteDataSourceImpl implements StadiumDetailsRemoteDataSource {
  final DioClient dioClient;

  StadiumDetailsRemoteDataSourceImpl(this.dioClient);

  @override
  Future<Result<StadiumDetailsEntity>> getStadiumDetails(int id) {
    return dioClient.callApi<StadiumDetailsEntity>(
      endpoint: "/stadium/view/$id",
      method: "GET",
      requiresAuth: true,
      fromJson: (json) {
        final stadiumJson = json['data']['Stadium'];
        final model = StadiumDetailsModel.fromJson(stadiumJson);
        return model.toEntity();
      },
    );
  }

  @override
  Future<Result<List<FacilityEntity>>> getFacilities(int stadiumId) {
    return dioClient.callApi<List<FacilityEntity>>(
      endpoint: "/facilities/viewall/$stadiumId",
      method: "GET",
      requiresAuth: true,
      fromJson: (json) {
        final facilitiesJson = json['data']['Facilities'] as List;
        return facilitiesJson
            .map((f) => FacilityModel.fromJson(f).toEntity())
            .toList();
      },
    );
  }
}
