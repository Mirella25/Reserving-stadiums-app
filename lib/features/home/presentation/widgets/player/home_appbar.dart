import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/dependency_injection/injections.dart';
import '../../../../../core/localization/cubit_localization.dart';
import '../../../../../shared/widgets/snackbar.dart';
import '../../../../auth/data/datasources/auth_local_datasource.dart';
import '../../../../auth/presentation/pages/login_page.dart';



AppBar buildHomeAppBar(BuildContext context) {
  final currentLang = Localizations.localeOf(context).languageCode;
  final isArabic = currentLang == 'ar';

  Future<void> _logout(BuildContext context) async {
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

      CustomSnackbar.show(context, message: 'تم تسجيل الخروج بنجاح ✅');

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => const LoginPage()),
            (route) => false,
      );
    } catch (e) {
      CustomSnackbar.show(
        context,
        message: '❌ فشل تسجيل الخروج من الخادم',
        isError: true,
      );
    }
  }

  return AppBar(
    toolbarHeight: 90.h,
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // زر تغيير اللغة
        IconButton(
          onPressed: () {
            context.read<LanguageCubit>().changeLanguage(isArabic ? 'en' : 'ar');
          },
          icon: const Icon(Icons.language, color: AppColors.primaryColor),
        ),
        const Spacer(),

        // نص Sportify مع أنميشن
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            WavyAnimatedText(
              'Sportify',
              textStyle: TextStyle(
                fontSize: 26.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
                fontFamily: 'Montserrat',
              ),
              speed: const Duration(milliseconds: 400),
            ),
          ],
        ),

        const Spacer(),

        // أيقونة الإشعارات أو زر إضافي
        IconButton(
          onPressed: () {
            _logout(context);

          },
          icon: const Icon(Icons.delete, color: AppColors.primaryColor),
        ),
      ],
    ),
  );
}
