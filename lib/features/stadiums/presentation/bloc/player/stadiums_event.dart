import 'package:equatable/equatable.dart';

abstract class StadiumsEvent extends Equatable {
  const StadiumsEvent();

  @override
  List<Object?> get props => [];
}

class GetAllStadiumsEvent extends StadiumsEvent {}