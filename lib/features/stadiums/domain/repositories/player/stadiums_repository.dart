import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/player/stadium_entity.dart';

abstract class StadiumsRepository {
  Future<Result<List<StadiumEntity>>> getAllStadiums();
}