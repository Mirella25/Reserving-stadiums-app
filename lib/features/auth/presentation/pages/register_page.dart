import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_images.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/bloc/register/bloc/register_bloc.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/login_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/verification_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_auth_image.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LogInPage(),
                              ));
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
                            imageName: AppImages.registerImage,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.registerTitle,
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
                          CustomAuthTextField(
                              icon: Icons.person_outline_outlined,
                              hintText: AppLocalizations.of(context)!.name),
                          SizedBox(
                            height: 5.h,
                          ),
                          BlocBuilder<RegisterBloc, RegisterState>(
                            builder: (context, state) {
                              return CustomAuthTextField(
                                icon: Icons.lock_outline,
                                hintText:
                                    AppLocalizations.of(context)!.password,
                                obscureText: state.isPasswordObscured,
                                suffixIcon: state.isPasswordObscured
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                onSuffixTap: () => context
                                    .read<RegisterBloc>()
                                    .add(TogglePasswordVisibility()),
                              );
                            },
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          BlocBuilder<RegisterBloc, RegisterState>(
                            builder: (context, state) {
                              return CustomAuthTextField(
                                icon: Icons.lock_outline,
                                obscureText: state.isPasswordConfirmObscured,
                                hintText: AppLocalizations.of(context)!
                                    .confirmPassword,
                                suffixIcon: state.isPasswordConfirmObscured
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                onSuffixTap: () => context
                                    .read<RegisterBloc>()
                                    .add(TogglePasswordConfirmVisibility()),
                              );
                            },
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          CustomAuthButton(
                              title: AppLocalizations.of(context)!.continuee,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const VerificationPage(),
                                    ));
                              }),
                          SizedBox(
                            height: 20.h,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: AppLocalizations.of(context)!
                                      .joinedBefore,
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
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const LogInPage(),
                                              ));
                                        },
                                        child: Text(
                                            AppLocalizations.of(context)!.login,
                                            style: TextStyle(
                                                color: AppColors.primaryColor,
                                                fontFamily: 'Lora',
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold))))
                              ])),
                          SizedBox(height: 10.h)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
