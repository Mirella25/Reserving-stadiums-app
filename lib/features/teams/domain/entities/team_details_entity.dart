// lib/features/teams/domain/entities/team_details_entity.dart
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_details_entity.dart';

class TeamDetailsEntity {
  final int id;
  final String name;
  final String? logoUrl;
  final String sportName;
  final int captainUserId;
  final String? captainEmail;
  final List<ProfileDetailsEntity> profiles; // ✅

  TeamDetailsEntity({
    required this.id,
    required this.name,
    required this.logoUrl,
    required this.sportName,
    required this.captainUserId,
    required this.captainEmail,
    required this.profiles,
  });
}
