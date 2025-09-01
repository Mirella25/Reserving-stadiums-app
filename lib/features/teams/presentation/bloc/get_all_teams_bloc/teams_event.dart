import 'package:equatable/equatable.dart';

abstract class TeamsEvent extends Equatable {
  const TeamsEvent();
  @override
  List<Object?> get props => [];
}

class LoadTeams extends TeamsEvent {}
class RefreshTeams extends TeamsEvent {}
