part of 'update_stadium_bloc.dart';

@immutable
sealed class StadiumEvent {}

class UpdateStadiumSubmitted extends StadiumEvent {
  final StadiumEntity stadiumEntity;
  final List<File>? photosFiles;
  final int id;

  UpdateStadiumSubmitted(
      {required this.stadiumEntity, this.photosFiles, required this.id});
}
