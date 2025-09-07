// lib/features/profile/domain/usecases/get_all_profiles_usecase.dart
import 'package:reserving_stadiums_app/core/result/result.dart';
import '../entities/profile_brief_entity.dart';
import '../repositories/profile_repository.dart';

class GetAllProfilesUsecase {
  final ProfileRepository repo;
  GetAllProfilesUsecase(this.repo);

  Future<Result<List<ProfileBriefEntity>>> call({int page = 1, int perPage = 30}) {
    return repo.getAllProfiles(page: page, perPage: perPage);
  }
}
