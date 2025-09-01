import 'package:equatable/equatable.dart';
import 'package:reserving_stadiums_app/features/teams/domain/entities/team_entity.dart';

class TeamCreateState extends Equatable {
  final bool loading;
  final TeamEntity? team;
  final String? error;

  const TeamCreateState({
    required this.loading,
    this.team,
    this.error,
  });

  factory TeamCreateState.initial() => const TeamCreateState(loading: false);

  TeamCreateState copyWith({
    bool? loading,
    TeamEntity? team,
    String? error,
  }) =>
      TeamCreateState(
        loading: loading ?? this.loading,
        team: team,
        error: error,
      );

  @override
  List<Object?> get props => [loading, team, error];
}
