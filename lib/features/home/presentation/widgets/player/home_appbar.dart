import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/dependency_injection/injections.dart';
import '../../../../../core/localization/cubit_localization.dart';
import '../../../../../main.dart';
import '../../../../../shared/widgets/snackbar.dart';
import '../../../../auth/data/datasources/auth_local_datasource.dart';
import '../../../../auth/presentation/pages/login_page.dart';

enum _MenuAction { changeLanguage, logout }

AppBar buildHomeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.6,
    centerTitle: true,
    title: AnimatedTextKit(
      animatedTexts: [
        WavyAnimatedText(
          'Sportify',
          textStyle: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
            fontFamily: 'Montserrat',
          ),
          speed: const Duration(milliseconds: 350),
        ),
      ],
      isRepeatingAnimation: false,
      repeatForever: false,
      totalRepeatCount: 1,
      pause: const Duration(milliseconds: 300),
    ),
    actions: const [
      _SettingsMenu(), // ⚙️ أيقونة صغيرة بدون خلفية
      SizedBox(width: 4),
    ],
  );
}

class _SettingsMenu extends StatefulWidget {
  const _SettingsMenu({super.key});

  @override
  State<_SettingsMenu> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<_SettingsMenu> {
  Offset _tapPosition = Offset.zero;

  void _storeTapPosition(TapDownDetails details) {
    _tapPosition = details.globalPosition;
  }

  Future<void> _openMenu() async {
    final overlayBox = Navigator.of(context, rootNavigator: true)
        .overlay!
        .context
        .findRenderObject() as RenderBox;

    final position = RelativeRect.fromLTRB(
      _tapPosition.dx,
      _tapPosition.dy,
      overlayBox.size.width - _tapPosition.dx,
      overlayBox.size.height - _tapPosition.dy,
    );

    final action = await showMenu<_MenuAction>(
      context: context,
      position: position,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      items: const [
        PopupMenuItem(
          value: _MenuAction.changeLanguage,
          child: Row(
            children: [
              Icon(Icons.language, color: AppColors.primaryColor, size: 18),
              SizedBox(width: 8),
              Text('Change language'),
            ],
          ),
        ),
        PopupMenuDivider(height: 6),
        PopupMenuItem(
          value: _MenuAction.logout,
          child: Row(
            children: [
              Icon(Icons.logout, color: Colors.redAccent, size: 18),
              SizedBox(width: 8),
              Text('Logout'),
            ],
          ),
        ),
      ],
    );

    if (!mounted || action == null) return;

    // سياق آمن بعد إغلاق القائمة
    final safeCtx = navigatorKey.currentContext ?? context;

    switch (action) {
      case _MenuAction.changeLanguage: {
        final rootCtx = navigatorKey.currentContext;
        if (rootCtx == null) break;

        // خلّي الـ overlay يقفل فعليًا
        await Future.delayed(const Duration(milliseconds: 1));

        WidgetsBinding.instance.addPostFrameCallback((_) {
          final lang = Localizations.localeOf(rootCtx).languageCode;
          rootCtx.read<LanguageCubit>().changeLanguage(lang == 'ar' ? 'en' : 'ar');
        });
        break;
      }



      case _MenuAction.logout:
        await _logout(safeCtx);
        break;
    }
  }

  Future<void> _logout(BuildContext safeCtx) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    try {
      if (token != null) {
        final dio = Dio();
        await dio.post(
          '${AppConstants.baseUrl}logout',
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );
      }

      await prefs.clear();
      final authLocal = getIt<AuthLocalDataSource>();
      await authLocal.clearToken();
      await authLocal.clearRole();

      CustomSnackbar.show(safeCtx, message: 'تم تسجيل الخروج بنجاح ✅');

      Navigator.of(safeCtx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const LoginPage()),
            (route) => false,
      );
    } catch (e) {
      CustomSnackbar.show(
        safeCtx,
        message: '❌ فشل تسجيل الخروج من الخادم',
        isError: true,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // أيقونة فقط، صغيرة، بدون خلفية
    return GestureDetector(
      onTapDown: _storeTapPosition, // لحساب موقع القائمة
      child: IconButton(
        icon: const Icon(Icons.settings,
            color: AppColors.primaryColor, size: 22), // 👈 أصغر وبدون خلفية
        onPressed: _openMenu,
        splashRadius: 20,
        tooltip: 'Settings',
      ),
    );
  }
}
