import '../../../sport/domain/entities/sport_entity.dart';

class TeamEntity {
  final int id;
  final String name;
  final int? captainId; // captin_id
  final int? sportId;   // sport_id
  final String? logo;
  final String? logoUrl;

  // ✅ جايين من الـ API
  final TeamCaptainEntity? captain;
  final SportEntity? sport; // عندك SportEntity جاهز

  const TeamEntity({
    required this.id,
    required this.name,
    required this.captainId,
    required this.sportId,
    this.logo,
    this.logoUrl,
    this.captain,
    this.sport,
  });
}

class TeamCaptainEntity {
  final int id;
  final String email;
  final String? type;
  const TeamCaptainEntity({required this.id, required this.email, this.type});
}
