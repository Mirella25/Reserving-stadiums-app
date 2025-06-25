import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startSplashSequence();
  }

  Future<void> _startSplashSequence() async {
    final prefs = await SharedPreferences.getInstance();


    await prefs.remove('seen_intro'); // ❗احذفه بعد الانتهاء من التعديل

    final seenIntro = prefs.getBool('seen_intro') ?? false;

    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      Navigator.pushReplacementNamed(
        context,
        seenIntro ? '/login' : '/intro',
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BounceInDown(
              duration: const Duration(milliseconds: 1200),
              child: SizedBox(
                width: 150.w,
                height: 150.h,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            SizedBox(height: 20.h),
            FadeIn(
              duration: const Duration(milliseconds: 1000),
              child: Text(
                AppLocalizations.of(context)!.splash_screen,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontFamily: 'Poppins'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
