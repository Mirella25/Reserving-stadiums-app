
import '../../../../../core/result/result.dart';
import '../../entities/player/facility_entity.dart';
import '../../entities/player/stadium_details_entity.dart';

abstract class StadiumDetailsRepository {
  Future<Result<StadiumDetailsEntity>> getStadiumDetails(int id);
  Future<Result<List<FacilityEntity>>> getFacilities(int stadiumId);


}
