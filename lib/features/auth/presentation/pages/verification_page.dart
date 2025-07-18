import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WaitingVerificationPage extends StatelessWidget {
  const WaitingVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email_outlined, size: 80, color: Colors.blue),
              SizedBox(height: 24),
              Text(
                'تم إرسال رابط التحقق إلى بريدك الإلكتروني',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 12),
              SizedBox(height: 24),
              SizedBox(height: 16),
              Text(
                'يرجى التحقق من بريدك.\nسيتم تأكيد الحساب تلقائيًا عند الضغط على الرابط.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
