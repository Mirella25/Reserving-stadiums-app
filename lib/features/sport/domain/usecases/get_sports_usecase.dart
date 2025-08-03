import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/sport/domain/entities/sport_entity.dart';
import 'package:reserving_stadiums_app/features/sport/domain/repositories/sport_repository.dart';

class GetSportsUsecase {
  final SportRepository sportRepository;

  GetSportsUsecase({required this.sportRepository});
  Future<Result<List<SportEntity>>> execute() {
    return sportRepository.getSports();
  }
}
