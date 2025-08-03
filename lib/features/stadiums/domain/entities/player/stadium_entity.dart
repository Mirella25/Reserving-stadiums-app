import 'package:equatable/equatable.dart';

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
  ];
}
