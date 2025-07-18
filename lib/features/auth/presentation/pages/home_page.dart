import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/login_page.dart';

import '../../../../core/dependency_injection/injections.dart';
import '../../data/datasources/auth_local_datasource.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
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
      ),

    );
  }
}
