part of 'profile_bloc.dart';

@immutable
class ProfileState {
  final bool isLoading;
  final String? errorMessage;
  final ProfileEntity? profileEntity;
  final bool isSuccess;

  const ProfileState({
    this.profileEntity,
    this.isLoading = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  ProfileState copyWith({
    bool? isLoading,
    String? errorMessage,
    ProfileEntity? profileEntity,
    bool? isSuccess,
  }) {
    return ProfileState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      profileEntity: profileEntity ?? this.profileEntity,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
