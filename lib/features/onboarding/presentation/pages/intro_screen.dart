import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_page.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;



  @override
  Widget build(BuildContext context) {
    final pages = [
      IntroPage(
        title: 'احجز ملعبك بسهولة',
        subtitle: 'اختر التاريخ والوقت وابدأ اللعب فورًا!',
        image: SvgPicture.asset(
          'assets/images/first_image_intro.svg',
        ),
        backgroundcolor: Colors.white,
      ),
      IntroPage(
        title: 'كوّن فريقك ودعُ أصدقاءك',
        subtitle: 'رتب المباريات وتابع التقييمات',
        image: SvgPicture.asset(
          'assets/images/undraw_junior-soccer_0lib (1).svg',
        ),
        backgroundcolor: Colors.white,
      ),
      IntroPage(
        title: 'استكشف الملاعب حولك',
        subtitle: 'شاهد مواقع الملاعب واختر الأنسب',
        image: SvgPicture.asset(
          'assets/images/undraw_destination_fkst.svg',

        ),
        backgroundcolor: Colors.white,
      ),
    ];
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: pages.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (_, index) => pages[index],
          ),


          Positioned(
            bottom: 110.h,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: pages.length,
                effect: WormEffect(
                  dotHeight: 10.h,
                  dotWidth: 10.w,
                  activeDotColor: Colors.green,
                ),
              ),
            ),
          ),


          Positioned(
            bottom: 40.h,
            right: 20.w,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
              onPressed: () async {
                if (currentPage < pages.length - 1) {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                } else {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('seen_intro', true);
                  Navigator.pushReplacementNamed(context, '/login');
                }
              },

              icon: Icon(currentPage < pages.length - 1 ? Icons.arrow_forward : Icons.check,
                color: Colors.white,),
              label: Text(
                currentPage < pages.length - 1 ? 'التالي' : 'ابدأ الآن',
                style: TextStyle(fontSize: 16.sp,color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
