import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomAuthImage extends StatelessWidget {
  final String imageName;
  const CustomAuthImage({
    super.key,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.32.sh,
      child: Center(
        child: SvgPicture.asset(
          imageName,
          width: 0.7.sw,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
