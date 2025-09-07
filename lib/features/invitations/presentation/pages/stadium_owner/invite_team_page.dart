import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/features/Team/presentation/bloc/stadium_owner/team_bloc.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/entities/stadium_owner/invite_team_entity.dart';
import 'package:reserving_stadiums_app/features/invitations/presentation/bloc/stadium_owner/invite_team/invite_team_bloc.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/widgets/stadium_owner/stadium_request_loading.dart';
import 'package:reserving_stadiums_app/shared/widgets/error_message.dart';

class InviteTeamPage extends StatelessWidget {
  final int leagueId;
  const InviteTeamPage({super.key, required this.leagueId});

  @override
  Widget build(BuildContext context) {
    return BlocListener<InviteTeamBloc, InviteTeamState>(
      listener: (context, state) {
        if (state.isSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("تم إرسال الدعوة بنجاح"),
              backgroundColor: Colors.green,
            ),
          );
        } else if (state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage!),
              backgroundColor: Colors.red,
            ),
          );
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
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios, size: 24.r),
                    ),
                    Text(
                      "Invite team",
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<ViewTeamsBloc, ViewTeamsState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const StadiumRequestsLoading();
                    }

                    if (state.errorMessage != null) {
                      return ErrorMessage(message: state.errorMessage!);
                    }

                    final list = state.teams ?? [];
                    if (list.isEmpty) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Lottie.asset(
                              'assets/lootie/Empty.json',
                              width: 300.w,
                              height: 300.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            'لا توجد فرق حالياً',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ],
                      );
                    }

                    return AnimationLimiter(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          final team = list[index];

                          return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 500),
                            child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  shadowColor: AppColors.borderColor,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  elevation: 3,
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 16),
                                    leading: const CircleAvatar(
                                      child: Icon(
                                        Icons.people,
                                        color: AppColors.primaryColor,
                                        size: 28,
                                      ),
                                    ),
                                    title: Text(
                                      team.name,
                                      style: const TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    trailing: TextButton(
                                      onPressed: () {
                                        _showConfirmDialog(
                                          context,
                                          team.id,
                                          leagueId,
                                        );
                                      },
                                      child: const Text("Invite"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showConfirmDialog(BuildContext context, int teamId, int leagueId) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text("تأكيد الدعوة"),
          content: const Text("هل تريد إرسال دعوة لهذا الفريق؟"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text("إلغاء"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(ctx);
                context.read<InviteTeamBloc>().add(
                      InviteTeamSubmitted(
                          inviteTeamEntity: InviteTeamEntity(
                              teamId: teamId,
                              leagueId: leagueId,
                              isTeam: false)),
                    );
              },
              child: const Text("تأكيد"),
            ),
          ],
        );
      },
    );
  }
}
