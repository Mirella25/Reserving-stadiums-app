import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/repositories/stadium_owner/stadium_repository.dart';

class DeleteStadiumRequestUsecase {
  final StadiumRepository stadiumRepository;

  DeleteStadiumRequestUsecase({required this.stadiumRepository});
  Future<Result<void>> execute(int id) {
    return stadiumRepository.deleteStadiumRequest(id);
  }
}
