// lib/features/profile/data/models/profile_brief_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../profile/domain/entities/profile_brief_entity.dart';

part 'profile_brief_model.freezed.dart';
part 'profile_brief_model.g.dart';

@freezed
class ProfileBriefModel with _$ProfileBriefModel {
  const factory ProfileBriefModel({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _ProfileBriefModel;

  factory ProfileBriefModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileBriefModelFromJson(json);
}

extension ProfileBriefModelX on ProfileBriefModel {
  ProfileBriefEntity toEntity() => ProfileBriefEntity(
    profileId: id,
    userId: userId,
    fullName: '${firstName.trim()} ${lastName.trim()}'.trim(),
    avatarUrl: avatar,
  );
}
