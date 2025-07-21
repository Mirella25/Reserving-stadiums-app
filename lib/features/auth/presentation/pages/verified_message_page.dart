// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_images.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_auth_image.dart';
import 'package:reserving_stadiums_app/features/profile/presentation/pages/profile_data_page.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';

import '../../../../main.dart';

class VerifiedMessagePage extends StatefulWidget {
  const VerifiedMessagePage({super.key});

  @override
  _VerifiedMessagePageState createState() => _VerifiedMessagePageState();
}

class _VerifiedMessagePageState extends State<VerifiedMessagePage>
    with TickerProviderStateMixin {
  late final AnimationController _iconController;
  late final Animation<double> _iconScale;
  late final Animation<double> _iconOpacity;

  late final AnimationController _buttonController;
  late final Animation<Offset> _buttonOffset;
  late final Animation<double> _buttonOpacity;

  @override
  void initState() {
    super.initState();

    _iconController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _iconScale = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _iconController, curve: Curves.elasticOut),
    );
    _iconOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _iconController, curve: Curves.easeIn),
    );

    _buttonController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _buttonOffset = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _buttonController, curve: Curves.easeOut),
    );
    _buttonOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _buttonController, curve: Curves.easeIn),
    );

    _iconController.forward().whenComplete(() {
      Future.delayed(const Duration(milliseconds: 300), () {
        _buttonController.forward();
      });
    });
  }

  @override
  void dispose() {
    _iconController.dispose();
    _buttonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios, size: 24.r)),
                ],
              ),
              const SizedBox(height: 40),
              ScaleTransition(
                scale: _iconScale,
                child: FadeTransition(
                  opacity: _iconOpacity,
                  child: const CustomAuthImage(
                    imageName: AppImages.verifiedImage,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              FadeTransition(
                opacity: _iconOpacity,
                child: Text(
                  AppLocalizations.of(context)!.emailVerified,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontFamily: 'Lora',
                    fontSize: 18.sp,
                  ),
                ),
              ),
              const Spacer(),
              SlideTransition(
                position: _buttonOffset,
                child: FadeTransition(
                  opacity: _buttonOpacity,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                          vertical: 14.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                      ),
                      onPressed: () {
                        navigatorKey.currentState?.pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (_) => const CreateProfileDataPage()),
                          (route) => false,
                        );
                      },
                      icon:
                          const Icon(Icons.arrow_forward, color: Colors.white),
                      label: Text(
                        AppLocalizations.of(context)!.letsGetStarted,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
