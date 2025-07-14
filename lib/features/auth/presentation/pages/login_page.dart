import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_images.dart';
import 'package:reserving_stadiums_app/core/result/result.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/bloc/login/bloc/login_bloc.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/forget_password_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/register_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_auth_image.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';

import '../../../../core/dependency_injection/injections.dart';
import '../../domain/usecases/google_login_usecase.dart';
import '../../domain/usecases/login_usecase.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(getIt<LoginUseCase>(), getIt<GoogleLoginUseCase>(),),
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
                    const CustomAuthImage(imageName: AppImages.loginImage),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.login,
                          style: TextStyle(
                            fontSize: 28.sp.clamp(20.sp, 32.sp),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),

                    /// Email field
                    CustomAuthTextField(
                      controller: emailController,
                      icon: Icons.mail_outline_outlined,
                      hintText: AppLocalizations.of(context)!.email,
                    ),
                    SizedBox(height: 5.h),

                    /// Password field
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return CustomAuthTextField(
                          controller: passwordController,
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
                    SizedBox(height: 15.h),

                    /// Forget password
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgetPasswordPage(),
                          ),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.forgotPassword,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontFamily: 'Lora',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),

                    /// Login button + Bloc Listener
                    BlocListener<LoginBloc, LoginState>(
                      listener: (context, state) {
                        if (state.errorMessage != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.errorMessage!)),
                          );
                        }
                        if (state.loginEntity != null) {
                          Navigator.pushReplacementNamed(context, '/home');
                        }
                      },
                      child: BlocBuilder<LoginBloc, LoginState>(
                        builder: (context, state) {
                          return state.isLoading
                              ? const CircularProgressIndicator()
                              : CustomAuthButton(
                            title:
                            AppLocalizations.of(context)!.login,
                            onPressed: () {
                              context.read<LoginBloc>().add(
                                LoginSubmitted(
                                  email: emailController.text.trim(),
                                  password:
                                  passwordController.text.trim(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20.h),

                    /// Register
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
                                  builder: (context) => const RegisterPage(),
                                ),
                              ),
                              child: Text(
                                AppLocalizations.of(context)!.register,
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontFamily: 'Lora',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),

                    /// Google Sign-In button (كما هو عندك)
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
