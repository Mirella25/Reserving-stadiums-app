import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_images.dart';
import 'package:reserving_stadiums_app/core/utils/validators.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_auth_image.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
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
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Form(
                    child: Column(
                      children: [
                        const CustomAuthImage(
                          imageName: AppImages.forgotPasswordImage,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.forgotPasswordTitle,
                              style: TextStyle(
                                  fontSize: 28.sp.clamp(20.sp, 32.sp),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey[700]),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          AppLocalizations.of(context)!.forgotPasswordSubtitle,
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontFamily: 'Lora',
                              fontSize: 13.sp),
                        ),
                        SizedBox(height: 30.h),
                        CustomAuthTextField(
                          icon: Icons.mail_outline_outlined,
                          hintText: AppLocalizations.of(context)!.email,
                          validator: (value) => Validators.combine([
                            Validators.required(
                                message: 'الرجاء إدخال البريد الإلكتروني'),
                            Validators.email()
                          ])(value),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CustomAuthButton(
                            title: AppLocalizations.of(context)!.submit,
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
