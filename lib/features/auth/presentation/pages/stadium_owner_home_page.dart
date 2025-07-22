import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../shared/widgets/snackbar.dart';

class StadiumOwnerHomePage extends StatefulWidget {
  const StadiumOwnerHomePage({super.key});

  @override
  State<StadiumOwnerHomePage> createState() => _StadiumOwnerHomePageState();
}

class _StadiumOwnerHomePageState extends State<StadiumOwnerHomePage> {
  int index = 1;
  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token'); // 👈 خزن التوكن أولاً

    try {
      if (token != null) {
        final dio = Dio();
        await dio.post(
          '${AppConstants.baseUrl}logout',
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );
      }

      // مسح البيانات بعد نجاح الطلب
      await prefs.remove('token');
      await prefs.remove('email');
      await prefs.remove('role');
      await prefs.remove('is_verified');

      final authLocal = getIt<AuthLocalDataSource>();
      await authLocal.clearToken();
Future.delayed(Duration(seconds: 2));
      CustomSnackbar.show(context, message: 'تم تسجيل الخروج بنجاح ✅');
    } catch (e) {
      CustomSnackbar.show(context, message: '❌ فشل تسجيل الخروج من الخادم', isError: true);
      print("Logout error: $e");
    }

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
          (route) => false,
    );
  }

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
            _logout(context);
              },
              child: const Text("🧹 حذف التوكن وإعادة تسجيل الدخول"),
            ),
          ],
        ));
  }
}
