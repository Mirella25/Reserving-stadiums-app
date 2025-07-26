import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/sport/domain/entities/sport_entity.dart';

abstract class SportRepository {
  Future<Result<List<SportEntity>>> getSports();
}
