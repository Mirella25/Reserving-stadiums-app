import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:reserving_stadiums_app/features/teams/domain/entities/team_details_entity.dart';
import 'package:reserving_stadiums_app/features/teams/data/models/team_captain_model.dart' as tc;
import 'package:reserving_stadiums_app/features/sport/data/models/sport_model.dart' as sp;
import 'package:reserving_stadiums_app/features/profile/data/models/profile_model.dart' as pm;

import '../../../../core/constants/app_strings.dart';

part 'team_details_model.freezed.dart';
part 'team_details_model.g.dart';

@freezed
class TeamDetailsModel with _$TeamDetailsModel {
  const factory TeamDetailsModel({
    required int id,
    required String name,
    @JsonKey(name: 'logo') String? logoPath,
    @JsonKey(name: 'logo_url') String? logoUrl,
    Map<String, dynamic>? captain,
    Map<String, dynamic>? sport,
    @Default(<dynamic>[]) List<dynamic> profiles,
  }) = _TeamDetailsModel;

  factory TeamDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$TeamDetailsModelFromJson(json);
}

extension TeamDetailsMapper on TeamDetailsModel {
  TeamDetailsEntity toEntity() {
    final tc.TeamCaptainModel? cap = captain == null
        ? null
        : tc.TeamCaptainModel.fromJson(Map<String, dynamic>.from(captain!));

    final sp.SportModel? spm = sport == null
        ? null
        : sp.SportModel.fromJson(Map<String, dynamic>.from(sport!));

    String? _buildUrl(String? full, String? path) {
      if (full != null && full.isNotEmpty) return full;
      if (path != null && path.isNotEmpty) {
        return '${AppConstants.mediaBaseUrl}/storage/$path';
      }
      return null;
    }

    return TeamDetailsEntity(
      id: id,
      name: name,
      logoUrl: _buildUrl(logoUrl, logoPath),
      sportName: spm?.name ?? '',
      captainUserId: cap?.id ?? -1,
      captainEmail: cap?.email,
      profiles: profiles
          .map((j) => pm.ProfileModel.fromJson(
        Map<String, dynamic>.from(j as Map),
      ).toDetailsEntity())
          .toList(),
    );
  }
}
