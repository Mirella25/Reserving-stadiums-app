class StadiumEntity {
  final String sportId;
  final String name;
  final String location;
  final String description;
  final String length;
  final String width;
  final String ownerNumber;
  final List<String>? photos;
  final int? id;
  final int? userId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? status;
  final String? adminNotes;

  StadiumEntity({
    required this.sportId,
    required this.name,
    required this.location,
    required this.description,
    required this.length,
    required this.width,
    required this.ownerNumber,
    required this.photos,
    this.id,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.adminNotes,
  });
}
