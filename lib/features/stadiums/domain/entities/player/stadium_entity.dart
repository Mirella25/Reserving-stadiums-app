import 'package:equatable/equatable.dart';
import '../../../../stadium_details/domain/entities/player/stadium_details_entity.dart';

class StadiumEntity extends Equatable {
  final int id;
  final int userId;
  final int sportId;
  final String name;
  final String location;
  final String description;
  final List<String> photos;
  final String length;
  final String width;
  final int ownerNumber;
  final double latitude;   // ✅ جديد
  final double longitude;  // ✅ جديد

  const StadiumEntity({
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
    required this.latitude,   // ✅ جديد
    required this.longitude,  // ✅ جديد
  });

  @override
  List<Object?> get props => [
    id,
    userId,
    sportId,
    name,
    location,
    description,
    photos,
    length,
    width,
    ownerNumber,
    latitude,
    longitude,
  ];
}

extension StadiumEntityMapper on StadiumEntity {
  StadiumDetailsEntity toDetailsEntity() {
    return StadiumDetailsEntity(
      id: id,
      userId: userId,
      sportId: sportId,
      name: name,
      location: location,
      description: description,
      photos: photos,
      length: length,
      width: width,
      ownerNumber: ownerNumber,
      latitude: latitude,   // ✅ صار يجي من الحقل
      longitude: longitude, // ✅ صار يجي من الحقل
    );
  }
}
