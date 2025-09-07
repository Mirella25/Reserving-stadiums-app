import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:reserving_stadiums_app/features/Team/domain/entities/stadium_owner/team_entity.dart';

part 'get_all_teams_data_response_model.freezed.dart';
part 'get_all_teams_data_response_model.g.dart';

@freezed
class GetAllTeamsDataResponseModel with _$GetAllTeamsDataResponseModel {
  const factory GetAllTeamsDataResponseModel({
    required int id,
    required String name,
  }) = _GetAllTeamsDataResponseModel;
  factory GetAllTeamsDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllTeamsDataResponseModelFromJson(json);
}

extension TeamDataModelX on GetAllTeamsDataResponseModel {
  TeamEntity toEntity() => TeamEntity(
        id: id,
        name: name,
      );
}
