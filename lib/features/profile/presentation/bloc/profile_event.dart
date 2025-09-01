part of 'profile_bloc.dart';

@immutable
abstract class ProfileEvent {
  const ProfileEvent();
}

/// إنشاء بروفايل
class CreateProfileSubmitted extends ProfileEvent {
  final ProfileEntity profile;
  final File? avatarFile;
  const CreateProfileSubmitted({required this.profile, this.avatarFile});
}

/// عرض تفاصيل بروفايل حسب ID (GET /profile/view/{id})
class LoadProfileDetails extends ProfileEvent {
  final int profileId;
  const LoadProfileDetails(this.profileId);
}

/// تحديث (re-fetch) لنفس الـ ID
class RefreshProfileDetails extends ProfileEvent {
  final int profileId;
  const RefreshProfileDetails(this.profileId);
}
class UpdateProfileSubmitted extends ProfileEvent {
  final int id;
  final ProfileUpdateRequest req;
  const UpdateProfileSubmitted({required this.id, required this.req});
}
