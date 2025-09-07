import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/usecases/stadium_owner/delete_stadium_usecase.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/usecases/stadium_owner/generate_stadium_slots_usecase.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/usecases/stadium_owner/get_all_stadiums_usecase.dart';

part 'view_stadiums_event.dart';
part 'view_stadiums_state.dart';

class ViewStadiumsBloc extends Bloc<ViewStadiumsEvent, ViewStadiumsState> {
  final GetAllStadiumsUsecase getAllStadiumsUsecase;
  final DeleteStadiumUsecase deleteStadiumUsecase;
  final GenerateStadiumSlotsUsecase generateStadiumSlotsUsecase;

  ViewStadiumsBloc(this.getAllStadiumsUsecase, this.deleteStadiumUsecase,
      this.generateStadiumSlotsUsecase)
      : super(const ViewStadiumsState()) {
    on<LoadStadiumsEvent>(_onLoadStadiums);
    on<DeleteStadiumSubmitted>(_onDeleteStadiumSubmitted);
    on<GenerateStadiumSlotsSubmitted>(_generateStadiumSlotsSubmitted);
  }

  Future<void> _onLoadStadiums(
    LoadStadiumsEvent event,
    Emitter<ViewStadiumsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final Result<List<StadiumEntity>> result =
        await getAllStadiumsUsecase.execute();

    if (result is Success<List<StadiumEntity>>) {
      emit(state.copyWith(
        isLoading: false,
        stadiums: result.data,
      ));
    } else if (result is Error<List<StadiumEntity>>) {
      emit(state.copyWith(
        isLoading: false,
        stadiums: [],
        errorMessage: result.e.toString(),
      ));
    }
  }

  Future<void> _onDeleteStadiumSubmitted(
    DeleteStadiumSubmitted event,
    Emitter<ViewStadiumsState> emit,
  ) async {
    emit(state.copyWith(
        isDeleting: true, errorMessage: null, deleteSuccess: false));

    final Result<void> result = await deleteStadiumUsecase.execute(event.id);

    if (result is Success<void>) {
      emit(state.copyWith(isDeleting: false, deleteSuccess: true));
    } else if (result is Error) {
      emit(
          state.copyWith(isDeleting: false, errorMessage: result.e.toString()));
    } else {
      emit(state.copyWith(isDeleting: false, errorMessage: 'Unknown error'));
    }
  }

  Future<void> _generateStadiumSlotsSubmitted(
    GenerateStadiumSlotsSubmitted event,
    Emitter<ViewStadiumsState> emit,
  ) async {
    emit(state.copyWith(
      isGenerating: true,
      generateSuccessMessage: null,
      generateSuccess: false,
    ));

    final Result<String> result =
        await generateStadiumSlotsUsecase.execute(event.id);

    if (result is Success<String>) {
      emit(state.copyWith(
        isGenerating: false,
        generateSuccess: true,
        generateSuccessMessage:
            result.data, // هون تجي الرسالة مثل "لا توجد أوقات جديدة ..."
      ));
    } else if (result is Error) {
      emit(state.copyWith(
        isGenerating: false,
        generateSuccessMessage: result.toString(),
      ));
    } else {
      emit(state.copyWith(
        isGenerating: false,
        generateSuccessMessage: 'Unknown error',
      ));
    }
  }
}
