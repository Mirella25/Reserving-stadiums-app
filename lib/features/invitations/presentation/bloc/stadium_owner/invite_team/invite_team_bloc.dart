import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/entities/stadium_owner/invite_team_entity.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/usecases/stadium_owner/invite_team_usecase.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/usecases/stadium_owner/create_league_usecase.dart';

part 'invite_team_event.dart';
part 'invite_team_state.dart';

class InviteTeamBloc extends Bloc<InviteTeamEvent, InviteTeamState> {
  final InviteTeamUsecase inviteTeamUsecase;

  InviteTeamBloc(this.inviteTeamUsecase) : super(const InviteTeamState()) {
    on<InviteTeamSubmitted>(_inviteTeamSubmitted);
  }

  Future<void> _inviteTeamSubmitted(
    InviteTeamSubmitted event,
    Emitter<InviteTeamState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    try {
      final Result<void> res =
          await inviteTeamUsecase.execute(event.inviteTeamEntity);

      if (res is Success<void>) {
        emit(state.copyWith(isLoading: false, isSuccess: true));
      } else if (res is Error<void>) {
        emit(state.copyWith(
            isLoading: false,
            isSuccess: false,
            errorMessage: res.e.toString()));
      } else {
        emit(state.copyWith(
            isLoading: false, isSuccess: false, errorMessage: 'Unknown error'));
      }
    } catch (e, st) {
      emit(state.copyWith(
          isLoading: false, isSuccess: false, errorMessage: e.toString()));
    }
  }
}
