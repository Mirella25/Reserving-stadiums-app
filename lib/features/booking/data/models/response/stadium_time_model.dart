// lib/features/booking/data/models/response/stadium_time_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/stadium_time_entity.dart';

part 'stadium_time_model.freezed.dart';
part 'stadium_time_model.g.dart';

@freezed
class StadiumTimeModel with _$StadiumTimeModel {
  const factory StadiumTimeModel({
    required int id,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    required String status,
  }) = _StadiumTimeModel;

  factory StadiumTimeModel.fromJson(Map<String, dynamic> json) =>
      _$StadiumTimeModelFromJson(json);
}

extension StadiumTimeModelX on StadiumTimeModel {
  StadiumTimeEntity toEntity() => StadiumTimeEntity(
    id: id,
    startTime: startTime,
    endTime: endTime,
    status: status,
  );
}
