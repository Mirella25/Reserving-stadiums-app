// lib/features/invitations/presentation/bloc/player/invite_state.dart
import 'package:equatable/equatable.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/entities/player/invite_entity.dart';

class InviteState extends Equatable {
  final bool isSubmitting;
  final InviteEntity? data;   // آخر دعوة ناجحة
  final String? error;

  const InviteState({
    this.isSubmitting = false,
    this.data,
    this.error,
  });

  InviteState copyWith({
    bool? isSubmitting,
    InviteEntity? data,
    String? error,
    bool clearData = false,
    bool clearError = false,
  }) {
    return InviteState(
      isSubmitting: isSubmitting ?? this.isSubmitting,
      data: clearData ? null : (data ?? this.data),
      error: clearError ? null : (error ?? this.error),
    );
  }

  @override
  List<Object?> get props => [isSubmitting, data, error];
}
