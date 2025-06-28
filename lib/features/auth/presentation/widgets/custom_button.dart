import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';

class CustomAuthButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  const CustomAuthButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      height: 50.h,
      minWidth: 1.sw,
      color: AppColors.primaryColor,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 16.sp, fontFamily: 'Montserrat'),
      ),
    );
  }
}
