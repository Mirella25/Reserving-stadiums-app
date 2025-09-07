// lib/features/invitations/presentation/bloc/player/invite_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/usecases/player/send_invite_usecase.dart';
import 'package:reserving_stadiums_app/features/invitations/presentation/bloc/player/send_invite_event.dart';
import 'package:reserving_stadiums_app/features/invitations/presentation/bloc/player/send_invite_state.dart';

import '../../../domain/entities/player/invite_entity.dart';

class InviteBloc extends Bloc<InviteEvent, InviteState> {
  final SendInviteUsecase sendInvite;

  InviteBloc({required this.sendInvite}) : super(const InviteState()) {
    on<SendInviteEvent>(_onSendInvite);
    on<ResetInviteEvent>(_onReset);
  }

  // Dart < 3 (if/else مع جنريك):
  Future<void> _onSendInvite(
      SendInviteEvent event,
      Emitter<InviteState> emit,
      ) async {
    emit(state.copyWith(isSubmitting: true, clearError: true));

    final res = await sendInvite(
      teamId: event.teamId,
      receiverId: event.receiverId,
      isTeam: event.isTeam,
    );

    if (res is Success<InviteEntity>) {
      emit(state.copyWith(isSubmitting: false, data: (res).data, clearError: true));
    } else if (res is ConnectionError<InviteEntity>) {
      emit(state.copyWith(
        isSubmitting: false,
        error: 'Connection error. Please check your internet.',
        clearData: true,
      ));
    } else if (res is Error<InviteEntity>) {
      emit(state.copyWith(
        isSubmitting: false,
        error: res.e?.toString() ?? 'Unknown error',
        clearData: true,
      ));
    } else {
      emit(state.copyWith(
        isSubmitting: false,
        error: 'Unexpected result',
        clearData: true,
      ));
    }
  }

  void _onReset(ResetInviteEvent event, Emitter<InviteState> emit) {
    emit(state.copyWith(clearData: true, clearError: true, isSubmitting: false));
  }
}
