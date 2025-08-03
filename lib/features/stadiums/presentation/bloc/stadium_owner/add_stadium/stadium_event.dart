part of 'stadium_bloc.dart';

@immutable
sealed class StadiumEvent {}

class CreateStadiumSubmitted extends StadiumEvent {
  final StadiumEntity stadiumEntity;
  final List<File>? photosFiles;

  CreateStadiumSubmitted({
    required this.stadiumEntity,
    this.photosFiles,
  });
}
