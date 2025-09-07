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
    final radius = 20.r;

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(radius),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // الخلفية (تحكّم كامل بدون ColorFilter)
            Image.asset(
              backgroundImage,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            // طبقة تغميق ناعمة
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.4, 1],
                  colors: [
                    Colors.black.withOpacity(0.05),
                    Colors.black.withOpacity(0.45),
                  ],
                ),
              ),
            ),
            // حدود خفيفة
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primaryColor.withOpacity(0.8),
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(radius),
                ),
              ),
            ),
            // نص
            Center(
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
          ],
        ),
      ),
    );
  }
}
