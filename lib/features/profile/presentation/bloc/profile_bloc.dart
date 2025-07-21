import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_entity.dart';
import 'package:reserving_stadiums_app/features/profile/domain/usecases/create_profile_usecase.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final CreateProfileUsecase createProfileUsecase;
  ProfileBloc(this.createProfileUsecase) : super(ProfileState()) {
    on<CreateProfileSubmitted>(_onCreateProfileSubmitted);
  }
  Future<void> _onCreateProfileSubmitted(
      CreateProfileSubmitted event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    final result = await createProfileUsecase.execute(
        profile: event.profileEntity, avatarFile: event.avatarFile);

    if (result is Success<ProfileEntity>) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        profileEntity: result.data,
      ));
    } else if (result is Error<ProfileEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: result.e.toString(),
        isSuccess: false,
      ));
    }
  }
}
