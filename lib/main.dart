import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/shared/widgets/splash_screen.dart';
import 'features/auth/presentation/pages/login_page.dart';
import 'features/onboarding/presentation/pages/intro_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Reserving Stadiums App',
          theme: ThemeData(
            primarySwatch: Colors.green,
            fontFamily: 'Cairo',
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashScreen(),
            '/intro': (context) => const IntroScreen(),
            '/login': (context) => const LoginScreen(), // مؤقتًا
          },
        );
      },
    );
  }
}
