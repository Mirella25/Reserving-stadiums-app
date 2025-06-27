import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserving_stadiums_app/core/constants/app_images.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/bloc/register/bloc/register_bloc.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/pages/login_page.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_auth_image.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:reserving_stadiums_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/l10n/app_localizations.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogInPage(),
                  ));
            },
            color: Colors.grey[700],
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomAuthImage(
                  imageName: AppImages.registerImage,
                  height: screenHeight,
                  width: screenWidth,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.registerTitle,
                      style: TextStyle(
                          fontSize: screenWidth * 0.08,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Colors.grey[700]),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Form(
                      child: Column(
                        children: [
                          CustomAuthTextField(
                              icon: Icons.mail_outline_outlined,
                              hintText: AppLocalizations.of(context)!.email),
                          const SizedBox(
                            height: 5,
                          ),
                          CustomAuthTextField(
                              icon: Icons.person_outline_outlined,
                              hintText: AppLocalizations.of(context)!.name),
                          const SizedBox(
                            height: 5,
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
                          const SizedBox(
                            height: 5,
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
                          const SizedBox(
                            height: 50,
                          ),
                          CustomAuthButton(
                              title: AppLocalizations.of(context)!.continuee,
                              onPressed: () {}),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: AppLocalizations.of(context)!
                                      .joinedBefore,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Lora',
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
                                            style: const TextStyle(
                                                color: Color(0xFF4CAF50),
                                                fontFamily: 'Lora',
                                                fontWeight: FontWeight.bold))))
                              ]))
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
