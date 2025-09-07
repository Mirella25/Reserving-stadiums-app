// lib/shared/widgets/safe_avatar.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SafeAvatar extends StatelessWidget {
  final String? relativeOrFullUrl; // ممكن يكون null أو "avatars/.."
  final String? storageBaseUrl;     // مثل http://localhost:8000
  final double radius;
  final String? fallbackText;       // initials/emoji
  final Color? bg;

  const SafeAvatar({
    super.key,
    required this.relativeOrFullUrl,
    required this.storageBaseUrl,
    required this.radius,
    this.fallbackText,
    this.bg,
  });

  String? _buildUrl() {
    final rel = relativeOrFullUrl;
    if (rel == null || rel.isEmpty) return null;
    if (rel.startsWith('http')) return rel;
    // نزّل /api من الـ base لو موجود
    final base = (storageBaseUrl ?? '').replaceFirst(RegExp(r'/api/?$'), '');
    return '$base/storage/$rel';
  }

  @override
  Widget build(BuildContext context) {
    final url = _buildUrl();

    if (url == null) {
      return CircleAvatar(
        radius: radius,
        backgroundColor: bg ?? Colors.grey.shade200,
        child: Text(
          (fallbackText == null || fallbackText!.isEmpty) ? '🙂' : fallbackText!,
          style: TextStyle(fontSize: radius * 0.8, fontWeight: FontWeight.w700),
        ),
      );
    }

    // مافي onBackgroundImageError إذا ما في صورة
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(url),
      onBackgroundImageError: (_, __) {}, // آمنة لأن عندنا صورة
      backgroundColor: bg ?? Colors.grey.shade200,
    );
  }
}
