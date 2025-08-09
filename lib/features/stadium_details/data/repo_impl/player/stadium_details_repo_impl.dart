import 'package:reserving_stadiums_app/features/stadium_details/domain/entities/player/facility_entity.dart';
import 'package:reserving_stadiums_app/features/stadium_details/domain/repositories/player/stadium_details_repo.dart';

import '../../../../../core/result/result.dart';
import '../../../domain/entities/player/stadium_details_entity.dart';
import '../../datasources/player/stadium_details_remote_datasource.dart';

class StadiumDetailsRepoImp implements StadiumDetailsRepository {
  final StadiumDetailsRemoteDataSource remoteDataSource;

  StadiumDetailsRepoImp(this.remoteDataSource);

  @override
  Future<Result<StadiumDetailsEntity>> getStadiumDetails(int id) {
    return remoteDataSource.getStadiumDetails(id);
  }

  @override
  Future<Result<List<FacilityEntity>>> getFacilities(int stadiumId) {
   return remoteDataSource.getFacilities(stadiumId);
  }
}