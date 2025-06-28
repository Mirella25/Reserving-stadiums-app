import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_images.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/bloc/login/bloc/login_bloc.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/forget_password_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/register_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_auth_image.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Form(
                child: Column(
                  children: [
                    const CustomAuthImage(
                      imageName: AppImages.loginImage,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.login,
                          style: TextStyle(
                              fontSize: 28.sp.clamp(20.sp, 32.sp),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    CustomAuthTextField(
                        icon: Icons.mail_outline_outlined,
                        hintText: AppLocalizations.of(context)!.email),
                    SizedBox(
                      height: 5.h,
                    ),
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return CustomAuthTextField(
                          icon: Icons.lock_outline,
                          hintText: AppLocalizations.of(context)!.password,
                          obscureText: state.isPasswordObscured,
                          suffixIcon: state.isPasswordObscured
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          onSuffixTap: () => context
                              .read<LoginBloc>()
                              .add(TogglePasswordVisibility()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgetPasswordPage(),
                            )),
                        child: Text(
                          AppLocalizations.of(context)!.forgotPassword,
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontFamily: 'Lora',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomAuthButton(
                        title: AppLocalizations.of(context)!.login,
                        onPressed: () {}),
                    SizedBox(
                      height: 20.h,
                    ),
                    RichText(
                        text: TextSpan(
                            text: AppLocalizations.of(context)!.newToLogistics,
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Lora',
                              fontSize: 14.sp,
                            ),
                            children: [
                          WidgetSpan(
                              alignment: PlaceholderAlignment.baseline,
                              baseline: TextBaseline.alphabetic,
                              child: InkWell(
                                onTap: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage(),
                                    )),
                                child: Text(
                                    AppLocalizations.of(context)!.register,
                                    style: TextStyle(
                                        color: AppColors.primaryColor,
                                        fontFamily: 'Lora',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold)),
                              ))
                        ])),
                    SizedBox(height: 10.h)
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
