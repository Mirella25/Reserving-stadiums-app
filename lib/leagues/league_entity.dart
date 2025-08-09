// lib/features/leagues/domain/entities/league_entity.dart

class LeagueEntity {
  final int id;
  final String name;
  final String country;
  final String season;
  final String imageUrl;

  LeagueEntity({
    required this.id,
    required this.name,
    required this.country,
    required this.season,
    required this.imageUrl,
  });
}
