import 'package:reserving_stadiums_app/core/result/result.dart';
import '../entities/profile_details_entity.dart';
import '../repositories/profile_repository.dart';
import '../../data/models/request/profile_update_request.dart';

class UpdateProfileUsecase {
  final ProfileRepository repo;
  UpdateProfileUsecase(this.repo);

  Future<Result<ProfileDetailsEntity>> call({
    required int id,
    required ProfileUpdateRequest req,
  }) {
    return repo.updateProfile(id, req);
  }
}
