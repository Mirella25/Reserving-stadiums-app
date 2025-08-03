import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  const ErrorMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Lottie.asset(
            'assets/lootie/Sign for error or explanation alert.json',
            width: 200.w,
            height: 200.h,
            fit: BoxFit.contain,
          ),
        ),
        Center(
          child: Text(
            message,
            style: TextStyle(
                fontSize: 16.sp, color: Colors.red, fontFamily: 'Lora'),
          ),
        ),
      ],
    );
  }
}
