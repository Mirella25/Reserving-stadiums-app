import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_images.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/core/utils/validators.dart';
import 'package:reserving_stadiums_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/google_login_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/bloc/login/bloc/login_bloc.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/forget_password_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/register_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/verification_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_auth_image.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/features/profile/presentation/pages/profile_data_page.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../main.dart';
import '../../../../shared/widgets/loading.dart';
import '../../../../shared/widgets/snackbar.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
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
      create: (_) => LoginBloc(getIt<LoginUseCase>(),
          getIt<GoogleLoginUseCase>(), getIt<AuthLocalDataSource>()),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const CustomAuthImage(imageName: AppImages.loginImage),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppLocalizations.of(context)!.login,
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CustomAuthTextField(
                      icon: Icons.mail_outline_outlined,
                      hintText: AppLocalizations.of(context)!.email,
                      controller: emailController,
                      validator: (value) => Validators.combine([
                        Validators.required(
                            message: 'الرجاء إدخال البريد الإلكتروني'),
                        Validators.email()
                      ])(value),
                    ),
                    SizedBox(height: 10.h),
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return CustomAuthTextField(
                          icon: Icons.lock_outline,
                          hintText: AppLocalizations.of(context)!.password,
                          obscureText: state.isPasswordObscured,
                          controller: passwordController,
                          validator: (value) => Validators.combine([
                            Validators.required(),
                            Validators.password()
                          ])(value),
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
                    BlocConsumer<LoginBloc, LoginState>(
                      listener: (context, state) async {
                        if (state.isLoading) {
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (_) => const CustomLoadingPage(),
                          );
                        }

                        if (state.errorMessage != null) {
                          Navigator.of(context).pop();

                          if (state.errorMessage!
                              .toLowerCase()
                              .contains("not verified")) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      const WaitingVerificationPage()),
                            );
                          } else {
                            CustomSnackbar.show(context,
                                message: state.errorMessage!, isError: true);
                          }
                        }

                        if (state.loginEntity != null) {
                          Navigator.of(context).pop();
                          CustomSnackbar.show(navigatorKey.currentContext!,
                              message: 'Login Success!', isError: false);

                          final prefs = await SharedPreferences.getInstance();
                          await prefs.setString(
                              'token', state.loginEntity!.token);

                          await Future.delayed(const Duration(
                              milliseconds: 2000)); // انتظر ليظهر السناك بار

                          if (state.loginEntity!.profileId == 0) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      const CreateProfileDataPage()),
                            );
                          } else {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const HomePage()),
                            );
                          }
                        }
                      },
                      builder: (context, state) {
                        return CustomAuthButton(
                          title: AppLocalizations.of(context)!.login,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              final email = emailController.text.trim();
                              final password = passwordController.text.trim();
                              context.read<LoginBloc>().add(
                                    LoginSubmitted(
                                        email: email, password: password),
                                  );
                            }
                          },
                        );
                      },
                    ),
                    SizedBox(height: 20.h),
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
                                  builder: (_) => const RegisterPage(),
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
                    SizedBox(height: 20.h),
                    Builder(builder: (context) {
                      return ElevatedButton(
                        onPressed: () async {
                          try {
                            final googleSignIn = GoogleSignIn(
                              scopes: [
                                'email',
                                'https://www.googleapis.com/auth/userinfo.profile'
                              ],
                              serverClientId:
                                  '266284559474-445vihh4cn3jh508puopf1sd28l9snto.apps.googleusercontent.com',
                            );

                            final googleUser = await googleSignIn.signIn();
                            if (googleUser != null) {
                              final googleAuth =
                                  await googleUser.authentication;
                              final idToken = googleAuth.idToken;

                              if (idToken != null) {
                                print('✅ ID Token received: $idToken');
                                context.read<LoginBloc>().add(
                                      GoogleLoginSubmitted(idToken: idToken),
                                    );
                              }
                            }
                          } catch (e) {
                            debugPrint('Google Login Error: $e');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            side:
                                const BorderSide(color: AppColors.primaryColor),
                          ),
                          elevation: 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/google_icon.png',
                              height: 24.h,
                              width: 24.h,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "${AppLocalizations.of(context)!.loginwithgoogle}",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    })
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
