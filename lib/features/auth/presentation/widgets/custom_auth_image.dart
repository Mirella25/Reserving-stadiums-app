import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAuthImage extends StatelessWidget {
  final double height;
  final double width;
  final String imageName;
  const CustomAuthImage(
      {super.key,
      required this.imageName,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.35,
      child: Center(
        child: SvgPicture.asset(
          imageName,
          width: width * 0.7,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
