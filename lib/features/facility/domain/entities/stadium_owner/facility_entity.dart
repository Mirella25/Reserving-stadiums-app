import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';

class FacilityEntity {
  final int? id;
  final int stadiumId;
  final String name;
  final String quantity;

  final List<dynamic>? photos;
  final StadiumEntity? stadiumEntity;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  FacilityEntity({
    this.id,
    this.stadiumEntity,
    this.createdAt,
    this.updatedAt,
    required this.stadiumId,
    required this.name,
    required this.photos,
    required this.quantity,
  });
}
