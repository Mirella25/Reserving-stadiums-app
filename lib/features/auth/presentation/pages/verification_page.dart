import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_images.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/bloc/verification/bloc/verification_bloc.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/verified_message_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_auth_image.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage>
    with SingleTickerProviderStateMixin {
  final _pinController = TextEditingController();
  late AnimationController _shakeController;
  late Animation<double> _shakeAnimation;
  @override
  void initState() {
    super.initState();

    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _shakeAnimation = Tween<double>(begin: 0, end: 10)
        .chain(CurveTween(curve: Curves.elasticIn))
        .animate(_shakeController);
  }

  @override
  void dispose() {
    _pinController.dispose();
    _shakeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationBloc(),
      child: BlocListener<VerificationBloc, VerificationState>(
        listener: (context, state) {
          if (state.isSuccess) {
            Future.delayed(const Duration(milliseconds: 600), () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VerifiedMessagePage(),
                  ));
            });
          } else if (state.isError) {
            _shakeController.forward(from: 0);
            Future.delayed(const Duration(milliseconds: 600), () {
              _pinController.clear();

              context.read<VerificationBloc>().add(PinChanged(''));
            });
          }
        },
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 20.w, right: 20.w, top: 20.h, bottom: 20.h),
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
                  const CustomAuthImage(
                    imageName: AppImages.verificationImage,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.enterOtp,
                        style: TextStyle(
                            fontSize: 28.sp.clamp(20.sp, 32.sp),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      AppLocalizations.of(context)!.otpSentToEmail,
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontFamily: 'Lora',
                          fontSize: 14.sp),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: Form(
                        child: Column(
                          children: [
                            BlocBuilder<VerificationBloc, VerificationState>(
                              builder: (context, state) {
                                final borderColor = state.isSuccess
                                    ? Colors.green
                                    : state.isError
                                        ? Colors.red
                                        : Colors.grey;
                                return AnimatedBuilder(
                                    animation: _shakeController,
                                    builder: (context, child) {
                                      return Transform.translate(
                                        offset:
                                            Offset(_shakeAnimation.value, 0),
                                        child: child,
                                      );
                                    },
                                    child: PinCodeTextField(
                                      controller: _pinController,
                                      pinBoxWidth: 50.w,
                                      pinBoxHeight: 60.h,
                                      maxLength: 4,
                                      pinBoxRadius: 15,
                                      autofocus: true,
                                      pinTextStyle: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      defaultBorderColor: borderColor,
                                      highlightAnimation: true,
                                      highlightAnimationBeginColor: borderColor,
                                      highlightAnimationEndColor: borderColor,
                                      hasTextBorderColor: borderColor,
                                      pinBoxBorderWidth: 2.w,
                                      hasError: state.isError,
                                      errorBorderColor: Colors.red,
                                      onTextChanged: (value) => context
                                          .read<VerificationBloc>()
                                          .add(PinChanged(value)),
                                      onDone: (value) => context
                                          .read<VerificationBloc>()
                                          .add(ValidatePin()),
                                      wrapAlignment: WrapAlignment.spaceAround,
                                    ));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          text: AppLocalizations.of(context)!.didntGetCode,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Lora',
                            fontSize: 16.sp,
                          ),
                          children: [
                        WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: InkWell(
                                onTap: () {},
                                child: Text(
                                    AppLocalizations.of(context)!.resend,
                                    style: TextStyle(
                                        color: AppColors.primaryColor,
                                        fontFamily: 'Lora',
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold))))
                      ])),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
