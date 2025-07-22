import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/login_page.dart';

class StadiumOwnerHomePage extends StatefulWidget {
  const StadiumOwnerHomePage({super.key});

  @override
  State<StadiumOwnerHomePage> createState() => _StadiumOwnerHomePageState();
}

class _StadiumOwnerHomePageState extends State<StadiumOwnerHomePage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    final items = <CurvedNavigationBarItem>[
      const CurvedNavigationBarItem(
        child: Icon(
          Icons.bar_chart,
          size: 30,
        ),
      ),
      const CurvedNavigationBarItem(
        child: Icon(
          Icons.home,
          size: 30,
        ),
      ),
      const CurvedNavigationBarItem(
        child: Icon(
          Icons.settings,
          size: 30,
        ),
      ),
    ];
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: AppColors.primaryColor,
          items: items,
          index: index,
          height: 60,
        ),
        appBar: AppBar(
          leading: null,
          centerTitle: true,
          toolbarHeight: 90,
          title: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              WavyAnimatedText('Sportify',
                  textStyle: TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                      fontFamily: 'Montserrat'),
                  speed: Duration(milliseconds: 400)),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_outlined,
                  size: 30,
                ))
          ],
        ),
        body: Column(
          children: [
            const Center(
              child: Text(
                '🎉 Welcome to the Stadium App!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final authLocal = getIt<AuthLocalDataSource>();
                await authLocal.clearToken(); // 👈 نحذف التوكن
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                  (route) => false,
                );
              },
              child: const Text("🧹 حذف التوكن وإعادة تسجيل الدخول"),
            ),
          ],
        ));
  }
}
