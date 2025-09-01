import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/team_details_entity.dart';


/// ======================= State =======================
class TeamDetailsState extends Equatable {
  final bool loading;
  final String? error;
  final TeamDetailsEntity? data;
  final bool updating;
  final bool updateSuccess;
  final bool deleted;

  const TeamDetailsState({
    this.loading = false,
    this.error,
    this.data,
    this.updating = false,
    this.updateSuccess = false,
    this.deleted = false,
  });

  TeamDetailsState copyWith({
    bool? loading,
    String? error,
    TeamDetailsEntity? data,
    bool? updating,
    bool? updateSuccess,
    bool? deleted,
  }) {
    return TeamDetailsState(
      loading: loading ?? this.loading,
      error: error,
      data: data ?? this.data,
      updating: updating ?? this.updating,
      updateSuccess: updateSuccess ?? this.updateSuccess,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  List<Object?> get props => [loading, error, data, updating, updateSuccess, deleted];
}