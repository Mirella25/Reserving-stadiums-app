// lib/features/leagues/domain/entities/league_entity.dart

import 'package:reserving_stadiums_app/features/stadiums/domain/entities/player/stadium_entity.dart';

class LeagueEntity {
  final int id;
  final String name;
  final String? description;

  /// نخزّنها DateTime داخليًا — العرض يكون بتحويل لسلسلة عند الحاجة
  final DateTime startDate;
  final DateTime endDate;

  final String price;
  final String prize;
  final String status;

  /// الملعب المضمَّن داخل استجابة الدوري (إن وُجد)
  final StadiumEntity? stadium;

  /// sport_name الجاي جاهز من الـ API
  final String sportName;

  /// (اختياري) موجود بالـ payload بس غالبًا ما رح نحتاجه
  final int? createdBy;

  LeagueEntity({
    required this.id,
    required this.name,
    this.description,
    required this.startDate,
    required this.endDate,
    required this.price,
    required this.prize,
    required this.status,
    this.stadium,
    required this.sportName,
    this.createdBy,
  });

  /// اختصار مفيد للـ UI اللي كان يستعمل stadiumId
  int? get stadiumId => stadium?.id;
}
