import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/dependency_injection/injections.dart';
import '../../../../home/presentation/widgets/player/shimmer_player_stadiums.dart';
import '../../bloc/player/stadiums_bloc.dart';
import '../../bloc/player/stadiums_event.dart';
import '../../bloc/player/stadiums_state.dart';
import '../../widgets/player/stadium_card.dart';

class StadiumsPage extends StatelessWidget {
  const StadiumsPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("📦 Current Bloc State: ${context.read<StadiumsBloc>().state}");
    return BlocProvider(
      create: (_) => getIt<StadiumsBloc>()..add(GetAllStadiumsEvent()),
      child: Scaffold(
        appBar: AppBar(title: const Text('الملاعب')),
        body: BlocBuilder<StadiumsBloc, StadiumsState>(
          builder: (context, state) {
            if (state is StadiumsLoading) {
              return GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return StadiumShimmer(index: index);
                },
              );
            } else if (state is StadiumsError) {
              return Center(child: Text(state.message));
            } else if (state is StadiumsLoaded) {
              final stadiums = state.stadiums;
              if (stadiums.isEmpty) {
                return  Center(
                  child: Text(
                    "لا توجد ملاعب حالياً",
                    style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                  ),
                );
              }

              return Container(
                margin: EdgeInsets.only(right: 6,left: 6),
                child: GridView.builder(
                  itemCount: stadiums.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.67,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    final stadium = stadiums[index];
                    return StadiumCard(stadium: stadium)
                        .animate()
                        .fadeIn(delay: (index * 100).ms);
                  },
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );

  }
}
