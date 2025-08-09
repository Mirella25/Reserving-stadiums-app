import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_strings.dart';
import '../../../../../core/dependency_injection/injections.dart';
import '../../../../home/presentation/widgets/player/shimmer_player_stadiums.dart';
import '../../../../sport/domain/entities/sport_entity.dart';
import '../../../../sport/presentation/bloc/sport_bloc.dart';
import '../../../../sport/presentation/bloc/sport_event.dart';
import '../../../../sport/presentation/bloc/sport_state.dart';
import '../../bloc/player/stadiums_bloc.dart';
import '../../bloc/player/stadiums_event.dart';
import '../../bloc/player/stadiums_state.dart';
import '../../widgets/player/sports_shimmer.dart';
import '../../widgets/player/stadium_card.dart';

class StadiumsPage extends StatefulWidget {
  const StadiumsPage({super.key});

  @override
  State<StadiumsPage> createState() => _StadiumsPageState();
}

class _StadiumsPageState extends State<StadiumsPage> {
  SportEntity? selectedSport;

  IconData _getSportIcon(String name) {
    switch (name.toLowerCase()) {
      case 'football':
        return Icons.sports_soccer;
      case 'basketball':
        return Icons.sports_basketball;
      case 'tennis':
        return Icons.sports_tennis;
      case 'volleyball':
        return Icons.sports_volleyball;
      case 'swimming':
        return Icons.pool;
      default:
        return Icons.help_outline;
    }
  }


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<StadiumsBloc>()..add(GetAllStadiumsEvent())),
        BlocProvider(create: (_) => getIt<SportBloc>()..add(LoadSportsEvent())),
      ],
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 115.h,
              child: BlocBuilder<SportBloc, SportState>(
                builder: (context, state) {
                  if (state is SportLoading) {
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                      itemCount: 6,
                      separatorBuilder: (_, __) => SizedBox(width: 10.w),
                      itemBuilder: (_, __) => const SportShimmer(),
                    );
                  } else if (state is SportLoaded) {
                    final sports = state.sports;

                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                      itemCount: sports.length + 2,
                      itemBuilder: (context, index) {
                        if (index < sports.length) {
                          final sport = sports[index];
                          final isSelected = selectedSport?.id == sport.id;

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSport = sport;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AnimatedContainer(
                                duration: 300.ms,
                                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                                decoration: BoxDecoration(
                                  color: isSelected ? AppColors.primaryColor : Colors.white,
                                  border: Border.all(
                                    color: isSelected
                                        ? AppColors.primaryColor
                                        : AppColors.borderColor,
                                  ),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Column(
                                  children: [
                                    Icon(
                                      _getSportIcon(sport.name),
                                      color: isSelected ? Colors.white : AppColors.textColor,
                                      size: 28.sp,
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      sport.name,
                                      style: TextStyle(
                                        color: isSelected ? Colors.white : AppColors.textColor,
                                        fontFamily: 'Montserrat',
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        } else if (index == sports.length) {
                          // 🔍 Search Icon
                          return IconButton(
                            icon: Icon(Icons.search, size: 28.sp),
                            onPressed: () {
                              // TODO: افتح صفحة البحث
                            },
                          );
                        } else {
                          // ⚙️ Filter Icon
                          return IconButton(
                            icon: Icon(Icons.filter_list, size: 28.sp),
                            onPressed: () {
                              // TODO: افتح الفلتر المتقدم
                            },
                          );
                        }
                      },
                    );
                  } else if (state is SportError) {
                    return Center(child: Text(state.message));
                  }
                  return const SizedBox();
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Divider(color: Colors.grey.shade700),
            ),

            Expanded(
              child: BlocBuilder<StadiumsBloc, StadiumsState>(
                builder: (context, state) {
                  if (state is StadiumsLoading) {
                    return GridView.builder(
                      itemCount: 6,
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.67,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemBuilder: (context, index) => StadiumShimmer(index: index),
                    );
                  } else if (state is StadiumsLoaded) {
                    final stadiums = state.stadiums;
                    if (stadiums.isEmpty) {
                      return Center(
                        child: Text("لا توجد ملاعب حالياً", style: TextStyle(fontSize: 16.sp, color: Colors.grey)),
                      );
                    }

                    return GridView.builder(
                      itemCount: stadiums.length,
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
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
                    );
                  } else if (state is StadiumsError) {
                    return Center(child: Text(state.message));
                  }
                  return const SizedBox();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
