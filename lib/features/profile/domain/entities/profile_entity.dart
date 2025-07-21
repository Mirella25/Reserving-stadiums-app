class ProfileEntity {
  final int? id;
  final int? userId;
  final String? firstName;
  final String? lastName;
  final String? birthdate;
  final String? address;
  final String? phoneNumber;
  final String? mine;
  final String? gender;
  final String? sport;
  final String? height;
  final String? weight;
  final String? emergencyContactInformation;
  final String? injuries;
  final String? positionsPlayed;
  final String? notableAchievements;
  final String? yearsOfExperience;
  final String? previousTeams;
  final String? extraNotes;
  final String? avatar;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ProfileEntity(
      {this.id,
      this.userId,
      this.firstName,
      this.lastName,
      this.birthdate,
      this.address,
      this.phoneNumber,
      this.mine,
      this.gender,
      this.sport,
      this.height,
      this.weight,
      this.emergencyContactInformation,
      this.injuries,
      this.positionsPlayed,
      this.notableAchievements,
      this.yearsOfExperience,
      this.previousTeams,
      this.extraNotes,
      this.avatar,
      this.createdAt,
      this.updatedAt});
}
