import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_details_entity.dart';
import 'package:reserving_stadiums_app/features/profile/domain/repositories/profile_repository.dart';

class GetProfileDetailsUsecase {
  final ProfileRepository repository;
  GetProfileDetailsUsecase(this.repository);

  Future<Result<ProfileDetailsEntity>> call(int profileId) {
    return repository.getProfileDetails(profileId);
  }
}
