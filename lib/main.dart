import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';
import 'core/localization/cubit_localization.dart';
import 'features/auth/presentation/pages/login_page.dart';
import 'shared/widgets/splash_screen.dart';
import 'features/onboarding/presentation/pages/intro_screen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => LanguageCubit()..loadSavedLanguage(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Stadium Booking App',
            locale: locale,
            supportedLocales: const [Locale('en'), Locale('ar')],
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            initialRoute: '/',
            routes: {
              '/': (_) => const SplashScreen(),
              '/intro': (_) => const IntroScreen(),
              '/login': (_) => const LogInPage(),
            },
          ),
        );
      },
    );
  }
}
