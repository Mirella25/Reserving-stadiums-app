import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/usecases/stadium_owner/delete_league_usecase.dart';
import 'package:reserving_stadiums_app/features/leagues/presentation/bloc/stadium_owner/leagues/leagues_bloc.dart';
import 'package:reserving_stadiums_app/features/leagues/presentation/bloc/stadium_owner/create_league/create_league_bloc.dart';
import 'package:reserving_stadiums_app/features/leagues/presentation/bloc/stadium_owner/update_league/update_league_bloc.dart';
import 'package:reserving_stadiums_app/features/leagues/presentation/pages/stadium_owner/create_league_page.dart';
import 'package:reserving_stadiums_app/features/leagues/presentation/pages/stadium_owner/league_details.dart';
import 'package:reserving_stadiums_app/features/leagues/presentation/pages/stadium_owner/update_league_page.dart';
import 'package:reserving_stadiums_app/shared/widgets/error_message.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';

class LeaguesPage extends StatelessWidget {
  const LeaguesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LeaguesBloc>(
      create: (_) => LeaguesBloc(
        getAllLeaguesUsecase: getIt(),
        getStadiumDetailsUsecase: getIt(),
        deleteLeagueUsecase: getIt<DeleteLeagueUsecase>(),
      )..add(LoadLeaguesEvent()),
      child: const _LeaguesView(),
    );
  }
}

class _LeaguesView extends StatefulWidget {
  const _LeaguesView();
  @override
  State<_LeaguesView> createState() => _LeaguesViewState();
}

class _LeaguesViewState extends State<_LeaguesView> {
  Future<bool?> _confirmDelete(String leagueName) async {
    return showDialog<bool>(
      context: context,
      builder: (dctx) => AlertDialog(
        title: const Text('تأكيد الحذف'),
        content: Text('هل أنت متأكد من حذف الدوري "$leagueName"؟'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dctx).pop(false),
            child: const Text('إلغاء'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => Navigator.of(dctx).pop(true),
            child: const Text('حذف'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LeaguesBloc, LeaguesState>(
      listener: (context, state) {
        if (state.deleteSuccess == true) {
          CustomSnackbar.show(context,
              message: 'تم حذف الدوري بنجاح', isError: false);
        }

        if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
          CustomSnackbar.show(context,
              message: state.errorMessage!, isError: true);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios, size: 24.r)),
                    Text(
                      "Leagues",
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: BlocBuilder<LeaguesBloc, LeaguesState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      if (state.errorMessage != null &&
                          state.errorMessage!.isNotEmpty) {
                        return ErrorMessage(message: state.errorMessage!);
                      }

                      final leagues = state.leagues;
                      if (leagues.isEmpty) {
                        return ErrorMessage(message: 'لا توجد دوريات بعد');
                      }

                      return ListView.separated(
                        itemCount: leagues.length,
                        separatorBuilder: (_, __) => SizedBox(height: 12.h),
                        itemBuilder: (context, index) {
                          final l = leagues[index];
                          final stadiumName = state.stadiumNames[l.stadiumId] ??
                              'ملعب غير معروف';

                          return Slidable(
                            key: ValueKey('league-${l.id}'),
                            endActionPane: ActionPane(
                              motion: const DrawerMotion(),
                              extentRatio: 0.48,
                              children: [
                                SlidableAction(
                                  onPressed: (ctx) async {
                                    Slidable.of(ctx)?.close();

                                    final updated =
                                        await Navigator.push<LeagueEntity?>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            BlocProvider<UpdateLeagueBloc>(
                                          create: (_) =>
                                              getIt<UpdateLeagueBloc>(),
                                          child: UpdateLeaguePage(league: l),
                                        ),
                                      ),
                                    );

                                    if (updated != null) {
                                      context
                                          .read<LeaguesBloc>()
                                          .add(LoadLeaguesEvent());
                                      CustomSnackbar.show(context,
                                          message: 'تم تعديل الدوري',
                                          isError: false);
                                    }
                                  },
                                  backgroundColor: AppColors.primaryColor,
                                  foregroundColor: Colors.white,
                                  icon: Icons.edit,
                                  label: 'تعديل',
                                ),
                                SlidableAction(
                                  onPressed: (ctx) async {
                                    Slidable.of(ctx)?.close();

                                    final confirmed =
                                        await _confirmDelete(l.name);
                                    if (confirmed == true) {
                                      context.read<LeaguesBloc>().add(
                                          DeleteLeagueSubmitted(id: l.id!));
                                    }
                                  },
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete,
                                  label: 'حذف',
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        LeagueDetails(leagueId: l.id!),
                                  )),
                              child: _LeagueCard(
                                name: l.name,
                                startDate: l.startDate,
                                endDate: l.endDate,
                                price: l.price.toString(),
                                prize: l.prize,
                                status: l.status,
                                stadiumName: stadiumName,
                                description: l.description,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider<CreateLeagueBloc>(
                  create: (_) => getIt<CreateLeagueBloc>(),
                  child: const CreateLeaguePage(),
                ),
              ),
            );
          },
          label:
              const Text("Add League", style: TextStyle(color: Colors.white)),
          icon: const Icon(Icons.add, color: Colors.white),
          backgroundColor: AppColors.accentColor,
        ),
      ),
    );
  }
}

class _LeagueCard extends StatelessWidget {
  final String name;
  final String startDate;
  final String endDate;
  final String price;
  final String prize;
  final String status;
  final String stadiumName;
  final String description;

  const _LeagueCard({
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.price,
    required this.prize,
    required this.status,
    required this.stadiumName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    Color statusColor;
    String statusText;
    switch (status) {
      case "active":
        statusColor = Colors.green;
        statusText = "نشط";
        break;
      case "finished":
        statusColor = Colors.red;
        statusText = "منتهي";
        break;
      default:
        statusColor = Colors.grey;
        statusText = "غير محدد";
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(name,
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis),
                ),
                Chip(
                  label: Text(statusText,
                      style: TextStyle(color: Colors.white, fontSize: 12.sp)),
                  backgroundColor: statusColor,
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(children: [
              const Icon(Icons.sports_soccer, size: 18),
              SizedBox(width: 6.w),
              Expanded(
                  child: Text(stadiumName, style: TextStyle(fontSize: 13.sp))),
            ]),
            SizedBox(height: 8.h),
            Row(children: [
              const Icon(Icons.date_range, size: 18),
              SizedBox(width: 6.w),
              Text("من $startDate إلى $endDate",
                  style: TextStyle(fontSize: 13.sp)),
            ]),
            SizedBox(height: 8.h),
            Row(children: [
              const Icon(Icons.attach_money, size: 18),
              SizedBox(width: 6.w),
              Text("السعر: $price ريال", style: TextStyle(fontSize: 13.sp)),
            ]),
            SizedBox(height: 8.h),
            Row(children: [
              const Icon(Icons.emoji_events, size: 18),
              SizedBox(width: 6.w),
              Expanded(
                  child: Text("الجائزة: $prize",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontSize: 13.sp))),
            ]),
            SizedBox(height: 8.h),
            Row(children: [
              const Icon(Icons.description, size: 18),
              SizedBox(width: 6.w),
              Expanded(
                  child: Text("الوصف: $description",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontSize: 13.sp))),
            ]),
          ],
        ),
      ),
    );
  }
}
