import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/core/localization/cubit_localization.dart';
import 'package:reserving_stadiums_app/core/navigation/deep_link_handler.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/login_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/verified_message_page.dart';

import 'package:reserving_stadiums_app/features/onboarding/presentation/pages/intro_screen.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';
import 'package:reserving_stadiums_app/shared/widgets/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/auth/domain/usecases/google_login_usecase.dart';
import 'features/auth/domain/usecases/login_usecase.dart';
import 'features/auth/presentation/bloc/login/bloc/login_bloc.dart';
import 'features/auth/presentation/pages/home_page.dart';
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies(); // تأكد أنك تستدعي الـ getIt
  runApp(
    BlocProvider(
      create: (_) => LanguageCubit()..loadSavedLanguage(),
      child: DeepLinkHandler(child: const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool> _hasSeenIntro() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('seen_intro') ?? false;
  }


  Future<bool> _hasVerifiedToken() async {
    final authLocal = getIt<AuthLocalDataSource>();
    final token = await authLocal.getCachedToken();
    final isVerified = await authLocal.getIsVerified();
    return token != null && token.isNotEmpty && isVerified == true;
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, __) => MaterialApp(
            navigatorKey: navigatorKey,
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
            home: FutureBuilder<List<bool>>(
              future: Future.wait([
                _hasSeenIntro(),
                _hasVerifiedToken(),
              ]),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SplashScreen();
                }

                final seenIntro = snapshot.data?[0] ?? false;
                final isVerified = snapshot.data?[1] ?? false;

                if (!seenIntro) {
                  return const IntroScreen();
                }

                if (isVerified) {
                  return const HomePage();
                }

                return BlocProvider(
                  create: (_) => LoginBloc(
                    getIt<LoginUseCase>(),
                    getIt<GoogleLoginUseCase>(),
                    getIt<AuthLocalDataSource>(),
                  ),
                  child: const LoginPage(),
                );
              },
            ),

          ),
        );
      },
    );
  }
}
