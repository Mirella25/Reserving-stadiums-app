// lib/features/profile/domain/entities/profile_brief_entity.dart
import 'package:equatable/equatable.dart';

class ProfileBriefEntity extends Equatable {
  final int profileId;
  final int userId;
  final String fullName;
  final String? avatarUrl;

  const ProfileBriefEntity({
    required this.profileId,
    required this.userId,
    required this.fullName,
    this.avatarUrl,
  });

  @override
  List<Object?> get props => [profileId, userId, fullName, avatarUrl];
}
