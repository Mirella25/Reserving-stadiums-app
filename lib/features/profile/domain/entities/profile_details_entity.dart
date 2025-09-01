class ProfileDetailsEntity {
  final int id;
  final int userId;
  final String firstName;
  final String lastName;
  final String? birthdate;
  final String? address;
  final String? phoneNumber;
  final String? avatar;
  final String? nationalId;
  final String? nationality;
  final String? gender;
  final int? height;
  final int? weight;
  final String? emergencyContactInformation;
  final String? injuries;
  final String? positionsPlayed;
  final String? notableAchievements;
  final int? yearsOfExperience;
  final String? previousTeams;
  final String? extraNotes;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ProfileDetailsEntity({
    required this.id,
    required this.userId,
    required this.firstName,
    required this.lastName,
    this.birthdate,
    this.address,
    this.phoneNumber,
    this.avatar,
    this.nationalId,
    this.nationality,
    this.gender,
    this.height,
    this.weight,
    this.emergencyContactInformation,
    this.injuries,
    this.positionsPlayed,
    this.notableAchievements,
    this.yearsOfExperience,
    this.previousTeams,
    this.extraNotes,
    this.createdAt,
    this.updatedAt,
  });
}
