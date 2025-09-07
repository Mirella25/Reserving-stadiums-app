import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/repositories/stadium_owner/stadium_repository.dart';

class GenerateStadiumSlotsUsecase {
  final StadiumRepository stadiumRepository;

  GenerateStadiumSlotsUsecase({required this.stadiumRepository});
  Future<Result<String>> execute(int id) {
    return stadiumRepository.generateStadiumSlots(id);
  }
}
