import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/repositories/stadium_owner/stadium_repository.dart';

class DeleteStadiumUsecase {
  final StadiumRepository stadiumRepository;

  DeleteStadiumUsecase({required this.stadiumRepository});
  Future<Result<void>> execute(int id) {
    return stadiumRepository.deleteStadium(id);
  }
}
