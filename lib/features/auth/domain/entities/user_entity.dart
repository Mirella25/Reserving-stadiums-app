class UserEntity {
  final int id;
  final String email;
  final String? emailVerifiedAt;

  UserEntity({
    required this.id,
    required this.email,
    this.emailVerifiedAt,
  });
}
