import '../../../../sport/domain/entities/sport_entity.dart';

class StadiumEntity {
  final int id;
  final int userId;
  final int sportId;
  final String name;
  final num stadiumPrice;   // ⬅️ جديد
  final num stadiumDeposit; // ⬅️ جديد
  final String location;
  final String description;
  final List<String> photos;
  final String length;
  final String width;
  final int ownerNumber;
  final double latitude;
  final double longitude;
  final SportEntity? sport; // 👈 أضفناها

  StadiumEntity({
    required this.id,
    required this.userId,
    required this.sportId,
    required this.name,
    required this.location,
    required this.description,
    required this.photos,
    required this.length,
    required this.width,
    required this.ownerNumber,
    required this.latitude,
    required this.longitude,
    this.sport,
    required this.stadiumDeposit,
    required this.stadiumPrice
  });
}
