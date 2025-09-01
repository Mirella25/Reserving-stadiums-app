class LeagueTeamEntity {
  final int id;
  final String name;
  final int? captainId;
  final int? sportId;
  final String? logo;
  final String? logoUrl;
  final String? createdAt;
  final String? updatedAt;

  const LeagueTeamEntity({
    required this.id,
    required this.name,
    this.captainId,
    this.sportId,
    this.logo,
    this.logoUrl,
    this.createdAt,
    this.updatedAt,
  });
}