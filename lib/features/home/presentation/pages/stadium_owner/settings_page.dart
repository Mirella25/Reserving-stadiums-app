// lib/features/home/presentation/pages/settings_page.dart

// ignore_for_file: dead_code

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_strings.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/login_page.dart';
import 'package:reserving_stadiums_app/shared/widgets/map_picker_page.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    try {
      if (token != null && token.isNotEmpty) {
        final dio = Dio();
        await dio.post(
          '${AppConstants.baseUrl}logout',
          options: Options(headers: {'Authorization': 'Bearer $token'}),
        );
      }
      await prefs.clear();
      final authLocal = getIt<AuthLocalDataSource>();
      await authLocal.clearToken();

      CustomSnackbar.show(context,
          message: 'تم تسجيل الخروج بنجاح ✅', isError: false);
    } catch (e) {
      CustomSnackbar.show(context,
          message: '❌ فشل تسجيل الخروج من الخادم', isError: true);
    }

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
      (route) => false,
    );
  }

  void _openMapPicker(BuildContext context) async {
    LatLng? _selectedLatLng;
    final LatLng? selected = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => MapPickerPage(
                latitude: _selectedLatLng?.latitude ?? 33.5138,
                longitude: _selectedLatLng?.longitude ?? 36.2765,
                title: 'اختر موقع الملعب',
              )),
    );
    if (selected != null) {
      // هنا تحصل على الإحداثيات
      print('المستخدم اختار: ${selected.latitude}, ${selected.longitude}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الإعدادات'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          // زر تسجيل الخروج
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('تسجيل الخروج'),
            onTap: () => _logout(context),
          ),
          const Divider(),

          ListTile(
            leading: Icon(Icons.map, color: AppColors.primaryColor),
            title: Text('تحديد موقع الملعب على الخريطة',
                style: TextStyle(fontSize: 16.sp)),
            onTap: () => _openMapPicker(context),
          ),
        ],
      ),
    );
  }
}
