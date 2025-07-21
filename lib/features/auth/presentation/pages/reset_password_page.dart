import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/core/utils/validators.dart';
import 'package:reserving_stadiums_app/features/auth/domain/usecases/submit_reset_password_usecase.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/bloc/reset_password/reset_password_bloc.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';

import '../../../../shared/widgets/loading.dart';
import '../../../../shared/widgets/snackbar.dart';
import '../../presentation/pages/login_page.dart';
import '../bloc/reset_password/reset_password_event.dart';
import '../bloc/reset_password/reset_password_state.dart';

class ResetPasswordPage extends StatefulWidget {
  final String token;
  final String email;

  const ResetPasswordPage({super.key, required this.token, required this.email});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ResetPasswordBloc(getIt<ResetPasswordUseCase>()),
      child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          if (state.isLoading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => const CustomLoadingPage(),
            );
          }

          if (state.successMessage != null) {
            Navigator.pop(context);
            Future.delayed(const Duration(milliseconds: 1500), () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const LoginPage()),
                    (route) => false,
              );
            });
          } else if (state.errorMessage != null) {
            Navigator.pop(context);
            CustomSnackbar.show(context, message: state.errorMessage!, isError: true);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Reset Password"),
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.all(20.w),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 30.h),
                    CustomAuthTextField(
                      controller: _passwordController,
                      hintText: "new password",
                      icon: Icons.lock_outline,
                      obscureText: true,
                      validator: Validators.combine([
                        Validators.required(message: 'الرجاء إدخال كلمة المرور'),
                        Validators.password(),
                      ]),
                    ),
                    SizedBox(height: 20.h),
                    CustomAuthTextField(
                      controller: _confirmController,
                      hintText: AppLocalizations.of(context)!.confirmPassword,
                      icon: Icons.lock_reset,
                      obscureText: true,
                      validator: (value) {
                        if (value != _passwordController.text) {
                          return 'كلمة المرور غير متطابقة';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40.h),
                    CustomAuthButton(
                      title: AppLocalizations.of(context)!.submit,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<ResetPasswordBloc>().add(
                            ResetPasswordSubmitEvent(
                              token: widget.token,
                              email: widget.email,
                              password: _passwordController.text.trim(),
                              confirmPassword: _confirmController.text.trim(),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
