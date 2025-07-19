import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CustomLoadingPage extends StatelessWidget {
  const CustomLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset(
              'assets/lootie/Soccer Sport Trophy with Soccer Ball and Shoes.json',
              width: 200.w,
              height: 200.h,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 5.h),
          Text("Loading..",style: TextStyle(fontFamily: 'Lora',fontSize: 18.sp),)
        ],
      ),
    );
  }
}
