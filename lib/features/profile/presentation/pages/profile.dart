import 'package:flutter/material.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/home_page.dart';

class CreateProfilePage extends StatelessWidget {
  const CreateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إنشاء الملف الشخصي'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'مرحبًا بك! أنشئ ملفك الشخصي لإكمال التسجيل.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // لاحقًا: تنفيذ حفظ البيانات
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                      (route) => false,
                );
              },
              child: const Text('حفظ ومتابعة'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // تخطي وإنهاء التسجيل
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                      (route) => false,
                );
              },
              child: const Text('تخطي'),
            ),
          ],
        ),
      ),
    );
  }
}
