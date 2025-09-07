import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/features/Team/presentation/bloc/stadium_owner/team_bloc.dart';
import 'package:reserving_stadiums_app/features/invitations/domain/usecases/stadium_owner/invite_team_usecase.dart';
import 'package:reserving_stadiums_app/features/invitations/presentation/bloc/stadium_owner/invite_team/invite_team_bloc.dart';
import 'package:reserving_stadiums_app/features/invitations/presentation/pages/stadium_owner/invite_team_page.dart';

class LeagueDetails extends StatelessWidget {
  final int leagueId;
  const LeagueDetails({super.key, required this.leagueId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MultiBlocProvider(
                providers: [
                  BlocProvider<ViewTeamsBloc>(
                    create: (ctx) =>
                        getIt<ViewTeamsBloc>()..add(LoadTeamsEvent()),
                  ),
                  BlocProvider<InviteTeamBloc>(
                    create: (ctx) => InviteTeamBloc(
                      getIt<InviteTeamUsecase>(),
                    ),
                  ),
                ],
                child: InviteTeamPage(leagueId: leagueId),
              ),
            ),
          );
        },
        label:
            const Text("Add invitation", style: TextStyle(color: Colors.white)),
        icon: const Icon(Icons.add, color: Colors.white),
        backgroundColor: AppColors.accentColor,
      ),
    );
  }
}
