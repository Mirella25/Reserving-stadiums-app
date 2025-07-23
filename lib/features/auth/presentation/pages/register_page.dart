import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_images.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/core/utils/validators.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/bloc/register/bloc/register_bloc.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/login_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/verification_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_auth_image.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../shared/widgets/loading.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  String? selectedRole;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(getIt<RegisterUsecase>()),
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
                                builder: (context) => const LoginPage(),
                              ));
                        },
                        icon: Icon(Icons.arrow_back_ios, size: 24.r)),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: Form(
                      key: formKey,
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
                              hintText: AppLocalizations.of(context)!.email,
                              controller: emailController,
                              validator: (value) => Validators.combine([
                                    Validators.required(),
                                    Validators.email()
                                  ])(value)),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.supervised_user_circle_outlined,
                                  color: Colors.grey,
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButtonFormField<String>(
                                    iconEnabledColor: Colors.grey,
                                    validator: (value) => Validators.combine([
                                      Validators.required(),
                                    ])(value),
                                    hint: const Text(
                                      "User",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Lora',
                                      ),
                                    ),
                                    items: const [
                                      DropdownMenuItem(
                                        value: "player",
                                        child: Text("Player"),
                                      ),
                                      DropdownMenuItem(
                                        value: "stadium_owner",
                                        child: Text("Stadium owner"),
                                      ),
                                    ],
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        setState(() {
                                          selectedRole = value;
                                        });
                                      }
                                    },
                                    decoration: const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 209, 208, 208)),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 209, 208, 208)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                                controller: passwordController,
                                validator: (value) => Validators.combine([
                                  Validators.required(),
                                  Validators.password()
                                ])(value),
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
                                  validator: (value) => Validators.combine([
                                        Validators.required(),
                                        Validators.confirmPassword(
                                          passwordController.text,
                                        )
                                      ])(value),
                                  onSuffixTap: () => context
                                      .read<RegisterBloc>()
                                      .add(TogglePasswordConfirmVisibility()),
                                  controller: confirmPasswordController);
                            },
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          BlocConsumer<RegisterBloc, RegisterState>(
                            listener: (context, state) async {
                              if (state.isLoading) {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (_) => const CustomLoadingPage(),
                                );
                              }

                              if (state.errorMessage != null) {
                                Navigator.pop(context);
                                CustomSnackbar.show(context,
                                    message: state.errorMessage!,
                                    isError: true);
                              }

                              if (state.registerEntity != null) {
                                Navigator.pop(context);

                                final prefs =
                                    await SharedPreferences.getInstance();
                                await prefs.setString(
                                    'email', emailController.text.trim());
                                await prefs.setString(
                                    'role', state.registerEntity!.role);
                                print(
                                    "✅ Saved role after register: ${state.registerEntity!.role}");

                                // ❗️توجيه المستخدم إلى صفحة انتظار التفعيل فقط
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          const WaitingVerificationPage()),
                                );
                              }
                            },
                            builder: (context, state) {
                              return CustomAuthButton(
                                title: AppLocalizations.of(context)!.continuee,
                                onPressed: () {
                                  if (formKey.currentState!.validate() &&
                                      selectedRole != null) {
                                    final email = emailController.text.trim();
                                    final password =
                                        passwordController.text.trim();
                                    final confirmPassword =
                                        confirmPasswordController.text.trim();

                                    context.read<RegisterBloc>().add(
                                          RegisterSubmitted(
                                            email: email,
                                            password: password,
                                            confirmPassword: confirmPassword,
                                            role: selectedRole!,
                                          ),
                                        );
                                  }
                                },
                              );
                            },
                          ),
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
                                                    const LoginPage(),
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
