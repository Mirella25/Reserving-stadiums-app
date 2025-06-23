import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';

class IntroPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget image;
  final Color backgroundcolor;

  const IntroPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundcolor,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInDown(
            delay: const Duration(milliseconds: 200),
            child: SizedBox(
              height: 280.h,
              width: 300.w,
              child: Card(
                color: Colors.white70,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.r),
                  child: image,
                ),
              ),
            ),
          ),
          SizedBox(height: 32.h),
          FadeInUp(
            delay: const Duration(milliseconds: 400),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          FadeInUp(
            delay: const Duration(milliseconds: 600),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
