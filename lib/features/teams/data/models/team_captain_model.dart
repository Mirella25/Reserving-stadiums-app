import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/team_entity.dart';

part 'team_captain_model.freezed.dart';
part 'team_captain_model.g.dart';

@freezed
class TeamCaptainModel with _$TeamCaptainModel {
  const factory TeamCaptainModel({
    @JsonKey(fromJson: _toInt) required int id,
    required String email,
    String? type,
  }) = _TeamCaptainModel;

  factory TeamCaptainModel.fromJson(Map<String, dynamic> json) => _$TeamCaptainModelFromJson(json);
}

int _toInt(Object? v) {
  if (v == null) return 0;
  if (v is int) return v;
  return int.tryParse(v.toString()) ?? 0;
}

extension TeamCaptainModelX on TeamCaptainModel {
  TeamCaptainEntity toEntity() => TeamCaptainEntity(id: id, email: email, type: type);
}
