import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/features/home/presentation/pages/player/player_bookings.dart';
import 'package:reserving_stadiums_app/features/home/presentation/pages/player/player_leagues.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animations/animations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/login_page.dart';
import 'package:reserving_stadiums_app/features/home/presentation/pages/player/stadiums.dart';
import 'package:reserving_stadiums_app/features/profile/presentation/pages/profile_data_page.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/dependency_injection/injections.dart';
import '../../../../auth/data/datasources/auth_local_datasource.dart';
import '../../../../stadiums/presentation/bloc/player/stadiums_bloc.dart';
import '../../../../stadiums/presentation/bloc/player/stadiums_event.dart';
import '../../../../stadiums/presentation/pages/player/stadiums_page.dart';
import '../../widgets/player/home_appbar.dart';
import '../../widgets/player/home_player_tile.dart';
import '../../widgets/player/shimmer_player_stadiums.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  bool isLoading = true;

  final screens = <Widget>[
    const Placeholder(),
    BlocProvider(
      create: (context) => getIt<StadiumsBloc>()..add(GetAllStadiumsEvent()),
      child: const StadiumsPage(),
    ),
    const PlayerBookings(),
    const PlayerLeagues(),
    const CreateProfileDataPage(),
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 800), () {
      if (mounted) {
        setState(() => isLoading = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBar(context),
      body: PageTransitionSwitcher(
        duration: const Duration(milliseconds: 250),
        transitionBuilder: (child, animation, secondaryAnimation) =>
            FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            ),
        child: index == 0 ? _buildHomeBody() : screens[index],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.primaryColor,
        index: index,
        height: 60.h,
        onTap: (newIndex) => setState(() => index = newIndex),
        items: const [
          CurvedNavigationBarItem(
              child: Icon(Icons.home, size: 30, color: Colors.grey)),
          CurvedNavigationBarItem(
              child: Icon(Icons.sports_soccer, size: 30, color: Colors.grey)),
          CurvedNavigationBarItem(
              child: Icon(Icons.book, size: 30, color: Colors.grey)),
          CurvedNavigationBarItem(
              child: Icon(Icons.emoji_events, size: 30, color: Colors.grey)),
          CurvedNavigationBarItem(
              child: Icon(Icons.person, size: 30, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildHomeBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: AppColors.borderColor, width: 1.2.w),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  blurRadius: 8.r,
                  offset: Offset(0, 3.h),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for stadiums leagues...',
                hintStyle: TextStyle(fontSize: 15.sp, color: Colors.grey),
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
              ),
              onChanged: (value) {
                // Handle search
              },
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.explore,
                        color: AppColors.primaryColor, size: 24.sp),
                    SizedBox(width: 8.w),
                    Text(
                      "?What do you want to do today",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontFamily: 'Montserrat',
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 2,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Divider(
                  color: AppColors.primaryColor.withOpacity(0.4),
                  thickness: 1.2,
                  endIndent: 120.w,
                ),
              ],
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.1,
            mainAxisSpacing: 12.h,
            crossAxisSpacing: 12.w,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              HomeTile(
                label: 'Stadiums',
                onTap: () => setState(() => index = 1),
                backgroundImage: "assets/images/stadiums_background.jpg",
              ),
              HomeTile(
                label: 'Matches',
                onTap: () {},
                backgroundImage: "assets/images/matches_background.jpg",
              ),
              HomeTile(
                label: 'Leagues',
                onTap: () => setState(() => index = 3),
                backgroundImage:
                "assets/images/golden-trophy-with-confetti-green-background_1142157-52744.jpg",
              ),
              HomeTile(
                label: 'My bookings',
                onTap: () => setState(() => index = 2),
                backgroundImage: "assets/images/istockphoto-538012183-612x612.jpg",
              ),
            ],
          ),
          SizedBox(height: 24.h),
          Text(
            "Stadiums around you",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Colors.black87,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 4,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Container(
            height: 2.h,
            width: 100.w,
            margin: EdgeInsets.only(bottom: 12.h),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(2.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryColor.withOpacity(0.4),
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 180.h,
            child: isLoading
                ? ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (_, i) => StadiumShimmer(index: i),
            )
                : CarouselSlider(
              options: CarouselOptions(
                height: 180.h,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.75,
                autoPlayInterval: const Duration(seconds: 3),
                enableInfiniteScroll: true,
              ),
              items: List.generate(4, (i) {
                return Builder(
                  builder: (context) => Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 6.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(
                          color: AppColors.borderColor.withOpacity(0.4),
                          width: 1.2.w),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.06),
                          blurRadius: 10.r,
                          offset: Offset(0, 4.h),
                        )
                      ],
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/stadiums_background.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.65),
                          ],
                          stops: const [0.4, 1.0],
                        ),
                      ),
                      padding: EdgeInsets.all(14.w),
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "اسم الملعب",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 17.sp,
                              fontFamily: 'Montserrat',
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.6),
                                  blurRadius: 6,
                                  offset: const Offset(0.5, 1),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Row(
                            children: [
                              Icon(Icons.location_on,
                                  size: 16.sp, color: Colors.white70),
                              SizedBox(width: 4.w),
                              Text(
                                "4.5 كم - \$40",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
