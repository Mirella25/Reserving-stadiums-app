import 'package:equatable/equatable.dart';

import '../../../domain/entities/player/stadium_entity.dart';


abstract class StadiumsState extends Equatable {
  const StadiumsState();

  @override
  List<Object?> get props => [];
}

class StadiumsInitial extends StadiumsState {}

class StadiumsLoading extends StadiumsState {}

class StadiumsLoaded extends StadiumsState {
  final List<StadiumEntity> stadiums;

  const StadiumsLoaded(this.stadiums);

  @override
  List<Object?> get props => [stadiums];
}

class StadiumsError extends StadiumsState {
  final String message;

  const StadiumsError(this.message);

  @override
  List<Object?> get props => [message];
}
