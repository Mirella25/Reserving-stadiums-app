import '../../domain/entities/sport_entity.dart';

abstract class SportState {}

class SportInitial extends SportState {}

class SportLoading extends SportState {}

class SportLoaded extends SportState {
  final List<SportEntity> sports;
  SportLoaded({required this.sports});
}

class SportError extends SportState {
  final String message;
  SportError({required this.message});
}
