part of 'profile_bloc.dart';

@immutable
class ProfileState {
  final bool isLoading;
  final String? errorMessage;
  final ProfileEntity? profileEntity; // يبقى للإنشاء كما هو
  final bool isSuccess;

  // 👇 جديد: نتائج عرض التفاصيل
  final ProfileDetailsEntity? profileDetails;

  const ProfileState({
    this.profileEntity,
    this.profileDetails, // جديد
    this.isLoading = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  ProfileState copyWith({
    bool? isLoading,
    String? errorMessage,
    ProfileEntity? profileEntity,
    bool? isSuccess,
    ProfileDetailsEntity? profileDetails, // جديد
  }) {
    return ProfileState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      profileEntity: profileEntity ?? this.profileEntity,
      isSuccess: isSuccess ?? this.isSuccess,
      profileDetails: profileDetails ?? this.profileDetails,
    );
  }
}
