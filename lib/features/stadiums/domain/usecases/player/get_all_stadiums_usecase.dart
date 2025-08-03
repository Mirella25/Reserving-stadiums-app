import 'package:reserving_stadiums_app/core/result/result.dart';
import '../../entities/player/stadium_entity.dart';
import '../../repositories/player/stadiums_repository.dart';

class GetAllStadiumsUseCase {
  final StadiumsRepository repository;

  GetAllStadiumsUseCase(this.repository);

  Future<Result<List<StadiumEntity>>> call() {
    return repository.getAllStadiums();
  }
}
