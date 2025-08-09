class StadiumDetailsEntity {
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
  final double latitude;
  final double longitude;

  const StadiumDetailsEntity({
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
  });
}
