import 'package:flutter/material.dart';

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
      height: 50,
      minWidth: 350,
      color: const Color(0xFF4CAF50),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 18, fontFamily: 'Montserrat'),
      ),
    );
  }
}
