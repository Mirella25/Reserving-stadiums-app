import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/usecases/stadium_owner/delete_league_usecase.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/usecases/stadium_owner/get_all_leagues_usecase.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/usecases/stadium_owner/get_stadium_details.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';

part 'leagues_event.dart';
part 'leagues_state.dart';

class LeaguesBloc extends Bloc<LeaguesEvent, LeaguesState> {
  final GetAllLeaguesUsecase getAllLeaguesUsecase;
  final GetStadiumOwnerDetailsUsecase getStadiumDetailsUsecase;
  final DeleteLeagueUsecase deleteLeagueUsecase;

  LeaguesBloc({
    required this.getAllLeaguesUsecase,
    required this.getStadiumDetailsUsecase,
    required this.deleteLeagueUsecase,
  }) : super(const LeaguesState()) {
    on<LoadLeaguesEvent>(_onLoadLeagues);
    on<DeleteLeagueSubmitted>(_onDeleteLeagueSubmitted);
  }

  Future<void> _onLoadLeagues(
    LoadLeaguesEvent event,
    Emitter<LeaguesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final Result<List<LeagueEntity>> result =
          await getAllLeaguesUsecase.execute();

      if (result is Success<List<LeagueEntity>>) {
        final leagues = result.data;

        // اجمع المعرفات الفريدة الصحيحة فقط
        final ids = leagues
            .map((e) => e.stadiumId)
            .where((id) => id != null) // إذا stadiumId يمكن يكون nullable
            .cast<int>()
            .toSet()
            .toList();

        final Map<int, String> stadiumNames = {};

        // جلب أسماء الملاعب متزامناً
        await Future.wait(ids.map((id) async {
          try {
            final Result<StadiumEntity> sres =
                await getStadiumDetailsUsecase.execute(id);
            if (sres is Success<StadiumEntity>) {
              stadiumNames[id] = sres.data.name;
            } else {
              stadiumNames[id] = 'ملعب غير معروف';
            }
          } catch (_) {
            stadiumNames[id] = 'ملعب غير معروف';
          }
        }));

        emit(state.copyWith(
          isLoading: false,
          leagues: leagues,
          stadiumNames: stadiumNames,
        ));
      } else if (result is Error<List<LeagueEntity>>) {
        emit(state.copyWith(
          isLoading: false,
          leagues: const [],
          errorMessage: result.e.toString(),
        ));
      } else {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: 'Unknown error while loading leagues',
        ));
      }
    } catch (e, st) {
      // حماية إضافية في حال رمى أي استثناء غير متوقع
      emit(state.copyWith(
        isLoading: false,
        leagues: const [],
        errorMessage: 'Failed to load leagues: ${e.toString()}',
      ));
    }
  }

// leagues_bloc.dart (أهم أجزاء الحذف)
  Future<void> _onDeleteLeagueSubmitted(
    DeleteLeagueSubmitted event,
    Emitter<LeaguesState> emit,
  ) async {
    // نحتفظ بالحالة الحالية حتى نعيدها لو فشل
    final previousLeagues = List<LeagueEntity>.from(state.leagues);

    // فوراً نُظهر نية الحذف (اختياري) — هنا لن نعرض Loading UI
    emit(state.copyWith(errorMessage: null, deleteSuccess: false));

    final Result<void> result = await deleteLeagueUsecase.execute(event.id);

    if (result is Success<void>) {
      // نزّل العنصر محلياً بدلاً من إعادة تحميل كل شيء
      final updated = previousLeagues.where((l) => l.id != event.id).toList();

      emit(state.copyWith(
        leagues: updated,
        deleteSuccess: true,
        errorMessage: null,
      ));
    } else if (result is Error) {
      emit(state.copyWith(
        leagues: previousLeagues,
        deleteSuccess: false,
        errorMessage: result.e.toString(),
      ));
    } else {
      emit(state.copyWith(
        leagues: previousLeagues,
        deleteSuccess: false,
        errorMessage: 'Unknown error',
      ));
    }
  }
}
