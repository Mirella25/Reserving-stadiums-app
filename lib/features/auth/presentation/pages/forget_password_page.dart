import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_images.dart';
import 'package:reserving_stadiums_app/core/utils/validators.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/bloc/forget_password/forget_password_bloc.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/verification_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_auth_image.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';
import 'package:reserving_stadiums_app/shared/widgets/loading.dart';

import '../../../../core/dependency_injection/injections.dart';
import '../../../../shared/widgets/snackbar.dart';
import '../../domain/usecases/reset_password_send_usecase.dart';
import '../bloc/forget_password/forget_password_event.dart';
import '../bloc/forget_password/forget_password_state.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ForgetPasswordBloc(
          getIt<SendResetLinkUseCase>()),
      child: BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
        listener: (context, state) {
          if (state.isLoading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => const CustomLoadingPage(),
            );
          }
          if (state.successMessage != null) {
            if (state.successMessage != null) {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const WaitingVerificationPage()),
              );
            }

          } else if (state.errorMessage != null) {
            Navigator.pop(context);
            CustomSnackbar.show(context, message:state.errorMessage! ,isError: true);
          }
        },
        builder: (context, state) {
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
                          icon: Icon(Icons.arrow_back_ios, size: 24.r),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              const CustomAuthImage(
                                imageName: AppImages.forgotPasswordImage,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!
                                        .forgotPasswordTitle,
                                    style: TextStyle(
                                        fontSize:
                                        28.sp.clamp(20.sp, 32.sp),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins',
                                        color: Colors.grey[700]),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text(
                                AppLocalizations.of(context)!
                                    .forgotPasswordSubtitle,
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontFamily: 'Lora',
                                    fontSize: 13.sp),
                              ),
                              SizedBox(height: 30.h),
                              CustomAuthTextField(
                                controller: _emailController,
                                icon: Icons.mail_outline_outlined,
                                hintText: AppLocalizations.of(context)!.email,
                                validator: (value) => Validators.combine([
                                  Validators.required(
                                      message: 'الرجاء إدخال البريد الإلكتروني'),
                                  Validators.email()
                                ])(value),
                              ),
                              SizedBox(height: 40.h),
                                 CustomAuthButton(
                                title: AppLocalizations.of(context)!
                                    .submit,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    context
                                        .read<ForgetPasswordBloc>()
                                        .add(SendResetLinkEvent(
                                        _emailController.text.trim()));
                                  }
                                },
                              ),
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
        },
      ),
    );
  }
}
