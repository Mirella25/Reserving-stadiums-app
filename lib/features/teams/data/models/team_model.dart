import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reserving_stadiums_app/features/teams/data/models/team_captain_model.dart';
import '../../domain/entities/team_entity.dart';
import '../../../sport/data/models/sport_model.dart'; // موديل الرياضة تبعك

part 'team_model.freezed.dart';
part 'team_model.g.dart';

@freezed
class TeamModel with _$TeamModel {
  const factory TeamModel({
    @JsonKey(fromJson: _toInt) required int id,
    required String name,
    @JsonKey(name: 'captin_id', fromJson: _toInt) required int captainId,
    @JsonKey(name: 'sport_id',  fromJson: _toInt) required int sportId,
    String? logo,
    @JsonKey(name: 'logo_url') String? logoUrl,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,

    // ✅ nested
    TeamCaptainModel? captain,
    SportModel? sport,

    // بنطنّش profiles إن ما بتلزك هلق
  }) = _TeamModel;

  factory TeamModel.fromJson(Map<String, dynamic> json) => _$TeamModelFromJson(json);
}

int _toInt(Object? v) {
  if (v == null) return 0;
  if (v is int) return v;
  return int.tryParse(v.toString()) ?? 0;
}

extension TeamModelX on TeamModel {
  TeamEntity toEntity() => TeamEntity(
    id: id,
    name: name,
    captainId: captainId,
    sportId: sportId,
    logo: logo,
    logoUrl: logoUrl,
    captain: captain?.toEntity(),
    sport: sport?.toEntity(), // من SportModel → SportEntity (عندك جاهزة)
  );
}
