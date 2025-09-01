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
import 'package:reserving_stadiums_app/features/home/presentation/widgets/stadium_owner/stadium_owner_shell.dart';
import 'package:reserving_stadiums_app/features/profile/presentation/pages/profile_data_page.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../main.dart';
import '../../../../shared/widgets/loading.dart';
import '../../../../shared/widgets/snackbar.dart';
import '../../../home/presentation/pages/player/player_home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final authLocal = getIt<AuthLocalDataSource>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          LoginBloc(getIt<LoginUseCase>(), getIt<GoogleLoginUseCase>(), getIt<AuthLocalDataSource>()),
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
                        Validators.required(message: 'الرجاء إدخال البريد الإلكتروني'),
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
                          onSuffixTap: () => context.read<LoginBloc>().add(TogglePasswordVisibility()),
                        );
                      },
                    ),
                    SizedBox(height: 15.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ForgetPasswordPage()),
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
                        final nav = navigatorKey.currentState;
                        final safeCtx = navigatorKey.currentContext ?? context;

                        // خُذ مرجع البلوك هنا (قبل أي await/تنقل)
                        final loginBlocRef = context.read<LoginBloc>();

                        if (state.isLoading) {
                          if (ModalRoute.of(safeCtx)?.isCurrent ?? true) {
                            showDialog(
                              context: safeCtx,
                              barrierDismissible: false,
                              builder: (_) => const CustomLoadingPage(),
                            );
                          }
                        }

                        if (state.errorMessage != null) {
                          if (Navigator.of(safeCtx).canPop()) {
                            Navigator.of(safeCtx).pop();
                          }
                          final msg = state.errorMessage!.toLowerCase();

                          if (msg.contains('not verified')) {
                            final prefs = await SharedPreferences.getInstance();
                            await prefs.setString('email', emailController.text.trim());

                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              nav?.pushAndRemoveUntil(
                                MaterialPageRoute(builder: (_) => const WaitingVerificationPage()),
                                    (route) => false,
                              );
                            });
                          } else {
                            CustomSnackbar.show(safeCtx, message: state.errorMessage!, isError: true);
                          }
                          return;
                        }

                        if (state.loginEntity != null) {
                          if (Navigator.of(safeCtx).canPop()) {
                            Navigator.of(safeCtx).pop();
                          }

                          final login = state.loginEntity!;
                          final prefs = await SharedPreferences.getInstance();
                          await prefs.setString('email', login.user.email);
                          await prefs.setString('role', login.roles.first);
                          await prefs.setString('token', login.token);

                          final pid = login.profileId;
                          if (pid != null && pid != 0) {
                            await prefs.setInt('profile_id', pid);
                          }

                          if (login.user.emailVerifiedAt == null) {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              nav?.pushAndRemoveUntil(
                                MaterialPageRoute(builder: (_) => const WaitingVerificationPage()),
                                    (route) => false,
                              );
                            });
                            return;
                          }

                          CustomSnackbar.show(safeCtx, message: 'Login Success!', isError: false);
                          await Future.delayed(const Duration(milliseconds: 2000));

                          final role = login.roles.first;

                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            if ((pid ?? 0) == 0 && role == "player") {
                              nav?.pushAndRemoveUntil(
                                MaterialPageRoute(builder: (_) => const CreateProfileDataPage()),
                                    (route) => false,
                              );
                            } else if (role == "stadium_owner") {
                              nav?.pushAndRemoveUntil(
                                MaterialPageRoute(builder: (_) => const StadiumOwnerShell()),
                                    (route) => false,
                              );
                            } else {
                              // ✅ لا تستخدم context.read داخل builder
                              nav?.pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (_) => BlocProvider.value(
                                    value: loginBlocRef,
                                    child: const HomePage(),
                                  ),
                                ),
                                    (route) => false,
                              );
                            }
                          });
                        }
                      },
                      builder: (context, state) {
                        return CustomAuthButton(
                          title: AppLocalizations.of(context)!.login,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              final email = emailController.text.trim();
                              final password = passwordController.text.trim();
                              context
                                  .read<LoginBloc>()
                                  .add(LoginSubmitted(email: email, password: password));
                            }
                          },
                        );
                      },
                    ),



                    SizedBox(height: 20.h),

                    // Register
                    RichText(
                      text: TextSpan(
                        text: AppLocalizations.of(context)!.newToLogistics,
                        style: TextStyle(color: Colors.grey, fontFamily: 'Lora', fontSize: 14.sp),
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: InkWell(
                              onTap: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => const RegisterPage()),
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

                    // Google login
                    Builder(
                      builder: (context) {
                        return ElevatedButton(
                          onPressed: () async {
                            // ✅ خُذ المراجع قبل أي await
                            final loginBloc = context.read<LoginBloc>();
                            final safeCtx = navigatorKey.currentContext ?? context;

                            try {
                              final googleSignIn = GoogleSignIn(
                                scopes: ['email', 'https://www.googleapis.com/auth/userinfo.profile'],
                                serverClientId: '266284559474-445vihh4cn3jh508puopf1sd28l9snto.apps.googleusercontent.com',
                              );

                              // ✅ عمليات async بدون استخدام context بعدها مباشرة
                              final googleUser = await googleSignIn.signIn();
                              if (googleUser == null) return;

                              final googleAuth = await googleUser.authentication;
                              final idToken = googleAuth.idToken;

                              if (idToken == null) {
                                CustomSnackbar.show(safeCtx, message: 'تعذّر الحصول على رمز Google.', isError: true);
                                return;
                              }

                              // ✅ إرسال الحدث عبر المرجع المسبق
                              loginBloc.add(GoogleLoginSubmitted(idToken: idToken));
                            } catch (e) {
                              CustomSnackbar.show(safeCtx, message: 'Google Sign-In فشل: $e', isError: true);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              side: const BorderSide(color: AppColors.primaryColor),
                            ),
                            elevation: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/google_icon.png', height: 24.h, width: 24.h),
                              SizedBox(width: 10.w),
                              Text(
                                AppLocalizations.of(context)!.loginwithgoogle,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );

                      },
                    ),
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
