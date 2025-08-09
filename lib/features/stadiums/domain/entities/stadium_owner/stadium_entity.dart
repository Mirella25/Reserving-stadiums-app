class StadiumEntity {
  final int sportId;
  final String name;
  final String location;
  final String description;
  final String length;
  final String width;
  final int ownerNumber;
  final List<String>? photos;
  final int? id;
  final int? userId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? statusRequest;
  final String? adminNotes;
  final String startTime;
  final String endTime;
  final String price;
  final String deposit;
  final int duration;
  final String longitude;
  final String latitude;

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
    this.statusRequest,
    this.adminNotes,
    required this.startTime,
    required this.endTime,
    required this.price,
    required this.deposit,
    required this.duration,
    required this.latitude,
    required this.longitude,
  });
}