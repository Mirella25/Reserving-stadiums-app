// lib/features/teams/presentation/widgets/loading_skeleton.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamsLoadingSkeleton extends StatelessWidget {
  const TeamsLoadingSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          _box(96.h, 16.r),
          SizedBox(height: 16.h),
          ...List.generate(6, (_) => Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: _box(76.h, 16.r),
          )),
        ],
      ),
    );
  }

  Widget _box(double h, double r) => Container(
    height: h,
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(r)),
  );
}
