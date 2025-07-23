import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/login_page.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/dependency_injection/injections.dart';
import '../../../auth/data/datasources/auth_local_datasource.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      if (token == null || token.isEmpty) {
        CustomSnackbar.show(context,
            message: 'Token مفقود. تسجيل الخروج المحلي فقط.');
        await prefs.clear();
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const LoginPage()),
          (route) => false,
        );
        return;
      }

      await prefs.remove('token');
      await prefs.remove('email');
      await prefs.remove('role');
      await prefs.remove('is_verified');

      final authLocal = getIt<AuthLocalDataSource>();
      await authLocal.clearToken();
      Future.delayed(Duration(seconds: 2));
      CustomSnackbar.show(context, message: 'تم تسجيل الخروج بنجاح ✅');
    } catch (e) {
      CustomSnackbar.show(context,
          message: '❌ فشل تسجيل الخروج من الخادم', isError: true);
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('🏟️ Stadium Booking - Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
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
            child: const Text("logout"),
          ),
        ],
      ),
    );
  }
}
