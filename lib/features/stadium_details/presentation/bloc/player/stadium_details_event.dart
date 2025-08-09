import 'package:freezed_annotation/freezed_annotation.dart';

part 'stadium_details_event.freezed.dart';

@freezed
class StadiumDetailsEvent with _$StadiumDetailsEvent {
  const factory StadiumDetailsEvent.load(int stadiumId) = LoadStadiumDetails;

}

