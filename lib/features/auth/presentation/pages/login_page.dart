import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تسجيل الدخول')),
      body: const Center(
        child: Text(
          'هنا شاشة تسجيل الدخول',
          style: TextStyle(fontSize: 20,fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}
