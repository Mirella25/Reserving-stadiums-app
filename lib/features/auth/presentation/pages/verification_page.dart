// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../shared/widgets/loading.dart';
import '../../../../shared/widgets/snackbar.dart';

class WaitingVerificationPage extends StatefulWidget {
  const WaitingVerificationPage({super.key});

  @override
  State<WaitingVerificationPage> createState() =>
      _WaitingVerificationPageState();
}

class _WaitingVerificationPageState extends State<WaitingVerificationPage> {
  String? email;
  bool isSending = false;

  @override
  void initState() {
    super.initState();
    _loadEmail();
  }

  Future<void> _loadEmail() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      email = prefs.getString('email');
    });
  }

  Future<void> _resendVerification() async {
    if (email == null) return;

    setState(() => isSending = true);

    try {
      final dio = Dio();
      final response = await dio.post(
        'http://192.168.1.102:8000/api/email/resend',
        data: {'email': email},
      );

      if (response.statusCode == 200 && response.data['status'] == true) {
        CustomSnackbar.show(context, message: ' تم إرسال رابط التحقق بنجاح');
      } else {
        CustomSnackbar.show(
          context,
          message: response.data['message'] ?? 'فشل في الإرسال',
          isError: true,
        );
      }
    } catch (e) {
      print(" Resend failed: $e");
      CustomSnackbar.show(context,
          message: ' حدث خطأ أثناء الإرسال', isError: true);
    } finally {
      setState(() => isSending = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.email_outlined,
                    size: 80,
                    color: AppColors.primaryColor,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'تم إرسال رابط التحقق إلى بريدك الإلكتروني:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 12),
                  if (email != null)
                    Text(
                      email!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: isSending ? null : _resendVerification,
                      icon: const Icon(
                        Icons.refresh,
                        color: AppColors.backgroundColor,
                      ),
                      label: const Text(
                        'إعادة إرسال الرابط',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'يرجى التحقق من بريدك.\nسيتم تأكيد الحساب تلقائيًا عند الضغط على الرابط.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          if (isSending)
            Positioned.fill(
              child: Container(
                color: Colors.white,
                child: const Center(
                  child: CustomLoadingPage(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
