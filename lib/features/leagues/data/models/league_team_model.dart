import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/league_team_entity.dart';

part 'league_team_model.freezed.dart';
part 'league_team_model.g.dart';

@freezed
class LeagueTeamModel with _$LeagueTeamModel {
  const factory LeagueTeamModel({
    required int id,
    required String name,
    @JsonKey(name: 'captin_id') int? captainId,
    @JsonKey(name: 'sport_id') int? sportId,
    @JsonKey(name: 'logo') String? logo,
    @JsonKey(name: 'logo_url') String? logoUrl,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _LeagueTeamModel;

  factory LeagueTeamModel.fromJson(Map<String, dynamic> json) =>
      _$LeagueTeamModelFromJson(json);
}

extension LeagueTeamModelX on LeagueTeamModel {
  LeagueTeamEntity toEntity() => LeagueTeamEntity(
    id: id,
    name: name,
    captainId: captainId,
    sportId: sportId,
    logo: logo,
    logoUrl: logoUrl,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}
