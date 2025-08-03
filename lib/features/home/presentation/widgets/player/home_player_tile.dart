import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_colors.dart';

class HomeTile extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final String backgroundImage;

  const HomeTile({
    Key? key,
    required this.label,
    required this.onTap,
    required this.backgroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(20.r);

    return Material(
      color: Colors.white,
      borderRadius: borderRadius,
      elevation: 0,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        splashColor: Colors.white.withOpacity(0.1),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            border: Border.all(
              color: AppColors.primaryColor,
              width: 1.w,
            ),
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3),
                BlendMode.darken,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryColor.withOpacity(0.2),
                blurRadius: 24.r,
                offset: Offset(0, 12.h),
              ),
            ],
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 6.r,
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(1.w, 1.h),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
