import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/features/home/presentation/widgets/stadium_owner/custom_grid_card.dart';

class StadiumOwnerHomePage extends StatelessWidget {
  const StadiumOwnerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': Icons.stadium, 'label': 'My Stadiums', 'onTap': () {}},
      {'icon': Icons.playlist_add, 'label': 'Stadium Requests', 'onTap': () {}},
      {'icon': Icons.event_available, 'label': 'Bookings', 'onTap': () {}},
      {
        'icon': Icons.schedule,
        'label': 'Schedule & Availability',
        'onTap': () {}
      },
      {'icon': Icons.build_circle, 'label': 'Facilities', 'onTap': () {}},
    ];

    return Scaffold(
        appBar: AppBar(
          leading: null,
          centerTitle: true,
          toolbarHeight: 90,
          title: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Sportify',
                  textStyle: TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                      fontFamily: 'Montserrat'),
                  speed: const Duration(milliseconds: 400)),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.w, left: 16.w),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 187, 187, 187),
                      width: 2.w,
                    ),
                  ),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 24.sp,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Column(children: [
              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  minHeight: 0.4.sh,
                ),
                padding: EdgeInsets.all(16.r),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/basketball court-cuate.svg",
                      width: 0.7.sw,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 16.h),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: Colors.grey[700],
                        size: 24.sp,
                      ),
                      label: Text(
                        'Add Stadium',
                        style: TextStyle(
                          fontFamily: 'Lora',
                          color: Colors.grey[700],
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(side: BorderSide.none),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: GridView.builder(
                  itemCount: items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12.w,
                    mainAxisSpacing: 12.h,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (_, i) => CustomGridCard(
                    icon: items[i]['icon'] as IconData,
                    label: items[i]['label'] as String,
                    onTap: items[i]['onTap'] as VoidCallback,
                  ),
                ),
              ),
            ])));
  }
}
