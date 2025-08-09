import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/player/stadium_details_entity.dart';


part 'stadium_details_state.freezed.dart';

@freezed
class StadiumDetailsState with _$StadiumDetailsState {
  const factory StadiumDetailsState.initial() = _Initial;
  const factory StadiumDetailsState.loading() = _Loading;
  const factory StadiumDetailsState.loaded(StadiumDetailsEntity stadium) = _Loaded;
  const factory StadiumDetailsState.error(String message) = _Error;
}
