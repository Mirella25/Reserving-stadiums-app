class LeagueEntity {
  final int? id;
  final String name;
  final String startDate;
  final String endDate;
  final double price;
  final String prize;
  final String description;
  final String status;
  final int stadiumId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? createdBy;
  LeagueEntity({
    this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.price,
    required this.prize,
    required this.description,
    required this.status,
    required this.stadiumId,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
  });
}
