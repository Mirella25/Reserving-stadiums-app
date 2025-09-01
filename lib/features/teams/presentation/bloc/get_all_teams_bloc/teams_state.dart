import 'package:equatable/equatable.dart';
import '../../../domain/entities/team_entity.dart';

class TeamsState extends Equatable {
  final bool loading;
  final List<TeamEntity> teams;
  final TeamEntity? myTeam;
  final String? error;

  const TeamsState({
    required this.loading,
    required this.teams,
    this.myTeam,
    this.error,
  });

  factory TeamsState.initial() => const TeamsState(loading: false, teams: []);

  TeamsState copyWith({
    bool? loading,
    List<TeamEntity>? teams,
    TeamEntity? myTeam,
    String? error,
  }) =>
      TeamsState(
        loading: loading ?? this.loading,
        teams: teams ?? this.teams,
        myTeam: myTeam,
        error: error,
      );

  @override
  List<Object?> get props => [loading, teams, myTeam, error];
}
