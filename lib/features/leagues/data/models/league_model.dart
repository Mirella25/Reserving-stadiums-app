// lib/features/leagues/data/models/league_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/league_entity.dart';

import 'package:reserving_stadiums_app/features/stadiums/domain/entities/player/stadium_entity.dart';

import '../../../stadiums/data/models/player/stadium_model.dart';

part 'league_model.freezed.dart';
part 'league_model.g.dart';

@freezed
class LeagueModel with _$LeagueModel {
  const factory LeagueModel({
    required int id,
    required String name,
    String? description,

    /// التواريخ جاية كنص من الـ API
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,

    required String price,
    required String prize,
    required String status,

    @JsonKey(name: 'created_by') int? createdBy,

    /// ملعب متداخل بالاستجابة (اختياري)
    StadiumModel? stadium,

    /// الاسم الجاهز للرياضة
    @JsonKey(name: 'sport_name') required String sportName,
  }) = _LeagueModel;

  factory LeagueModel.fromJson(Map<String, dynamic> json) =>
      _$LeagueModelFromJson(json);
}

extension LeagueModelMapper on LeagueModel {
  LeagueEntity toEntity() {
    // نحاول نعمل parse آمن للتواريخ
    DateTime _parse(String s) =>
        DateTime.tryParse(s)?.toLocal() ?? DateTime.fromMillisecondsSinceEpoch(0).toLocal();

    return LeagueEntity(
      id: id,
      name: name,
      description: description,
      startDate: _parse(startDate),   // ✅ String → DateTime
      endDate: _parse(endDate),       // ✅ String → DateTime
      price: price,
      prize: prize,
      status: status,
      createdBy: createdBy,
      stadium: stadium?.toEntity(),   // ✅ StadiumModel → StadiumEntity (إذا موجود)
      sportName: sportName,
    );
  }
}
