part of 'profile_bloc.dart';

@immutable
sealed class ProfileEvent {}

class CreateProfileSubmitted extends ProfileEvent {
  final ProfileEntity profileEntity;
  final File? avatarFile;

  CreateProfileSubmitted({
    required this.profileEntity,
    this.avatarFile,
  });
}
