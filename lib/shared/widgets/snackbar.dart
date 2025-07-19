import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class CustomSnackbar {
  static void show(
      BuildContext context, {
        required String message,
        bool isError = false,
        Duration duration = const Duration(seconds: 3),
      }) {
    Flushbar(
      messageText: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: isError ? const Color(0xFFE74C3C) : const Color(0xFF2ECC71),
      duration: duration,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      borderRadius: BorderRadius.circular(16),
      flushbarPosition: FlushbarPosition.BOTTOM,
      icon: Icon(
        isError ? Icons.error_rounded : Icons.check_circle_rounded,
        size: 28,
        color: Colors.white,
      ),
      boxShadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          offset: const Offset(0, 4),
          blurRadius: 12,
        ),
      ],
      animationDuration: const Duration(milliseconds: 500),
    ).show(context);
  }
}
