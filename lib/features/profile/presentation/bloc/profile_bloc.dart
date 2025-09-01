import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_entity.dart';
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_details_entity.dart';
import 'package:reserving_stadiums_app/features/profile/domain/repositories/profile_repository.dart';
import 'package:reserving_stadiums_app/features/profile/domain/usecases/get_profile_details_usecase.dart';

import '../../data/models/request/profile_update_request.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository repository;              // للإنشاء
  final GetProfileDetailsUsecase getDetailsUsecase; // للعرض


  ProfileBloc({
    required this.repository,
    required this.getDetailsUsecase,
  }) : super(const ProfileState()) {
    on<CreateProfileSubmitted>(_onCreateProfile);
    on<LoadProfileDetails>(_onLoadProfileDetails);
    on<RefreshProfileDetails>(_onRefreshProfileDetails);
    on<UpdateProfileSubmitted>(_onUpdateProfile); // ✅ جديد
  }

  Future<void> _onCreateProfile(
      CreateProfileSubmitted event,
      Emitter<ProfileState> emit,
      ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    final Result<ProfileEntity> res = await repository.createProfile(
      profile: event.profile,
      avatarFile: event.avatarFile,
    );

    if (res is Success<ProfileEntity>) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        profileEntity: res.data,
      ));
    } else if (res is ConnectionError<ProfileEntity>) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: false,
        errorMessage: 'Connection error. Please check your internet.',
      ));
    } else if (res is Error<ProfileEntity>) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: false,
        errorMessage: _toMessage(res.e),
      ));
    } else {
      // Loading أو نوع غير متوقّع
      emit(state.copyWith(isLoading: false, isSuccess: false));
    }
  }

  Future<void> _onLoadProfileDetails(
      LoadProfileDetails event,
      Emitter<ProfileState> emit,
      ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final Result<ProfileDetailsEntity> res =
    await getDetailsUsecase(event.profileId);

    if (res is Success<ProfileDetailsEntity>) {
      emit(state.copyWith(
        isLoading: false,
        profileDetails: res.data,
      ));
    } else if (res is ConnectionError<ProfileDetailsEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: 'Connection error. Please check your internet.',
      ));
    } else if (res is Error<ProfileDetailsEntity>) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: _toMessage(res.e),
      ));
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _onRefreshProfileDetails(
      RefreshProfileDetails event,
      Emitter<ProfileState> emit,
      ) async {
    final Result<ProfileDetailsEntity> res =
    await getDetailsUsecase(event.profileId);

    if (res is Success<ProfileDetailsEntity>) {
      emit(state.copyWith(profileDetails: res.data));
    } else if (res is ConnectionError<ProfileDetailsEntity>) {
      emit(state.copyWith(errorMessage: 'Connection error. Please check your internet.'));
    } else if (res is Error<ProfileDetailsEntity>) {
      emit(state.copyWith(errorMessage: _toMessage(res.e)));

    }
  }



  // تحت بقية الhandlers ضيف هاد:
  Future<void> _onUpdateProfile(
      UpdateProfileSubmitted event,
      Emitter<ProfileState> emit,
      ) async {
    emit(state.copyWith(isLoading: true, isSuccess: false, errorMessage: null));

    final Result<ProfileDetailsEntity> res =
    await repository.updateProfile(event.id, event.req);

    if (res is Success<ProfileDetailsEntity>) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        profileDetails: res.data, // ✅ حدّث الواجهة فوراً
      ));
    } else if (res is ConnectionError<ProfileDetailsEntity>) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: false,
        errorMessage: 'Connection error. Please check your internet.',
      ));
    } else if (res is Error<ProfileDetailsEntity>) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: false,
        errorMessage: _toMessage(res.e),
      ));
    } else {
      emit(state.copyWith(isLoading: false, isSuccess: false));
    }
  }


  String _toMessage(Object? e) {
    if (e == null) return 'Unknown error';
    final s = e.toString();
    return s.isEmpty ? 'Unknown error' : s;
  }
}
