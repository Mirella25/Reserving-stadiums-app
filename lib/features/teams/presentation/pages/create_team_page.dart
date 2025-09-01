// lib/features/teams/presentation/pages/create_team_page.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';

import 'package:reserving_stadiums_app/features/teams/data/models/request/create_team_request.dart';
import 'package:reserving_stadiums_app/features/teams/domain/usecases/create_team.dart';

import '../../../../core/constants/app_colors.dart';
import '../bloc/create_team_bloc/create_team_event.dart';
import '../bloc/create_team_bloc/team_create_bloc.dart';

import '../bloc/create_team_bloc/team_create_state.dart';

import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_bloc.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_event.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_state.dart';
import 'package:reserving_stadiums_app/features/sport/domain/entities/sport_entity.dart';

import '../../../../shared/widgets/snackbar.dart'; // CustomSnackbar

class CreateTeamPage extends StatefulWidget {
  final int captainId;
  const CreateTeamPage({super.key, required this.captainId});

  @override
  State<CreateTeamPage> createState() => _CreateTeamPageState();
}

class _CreateTeamPageState extends State<CreateTeamPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  int? _selectedSportId;
  File? _logoFile;

  @override
  void dispose() {
    _nameCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickLogo() async {
    final src = await showModalBottomSheet<ImageSource>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => const _ImageSourceSheet(),
    );
    if (src == null) return;
    final picked = await ImagePicker().pickImage(source: src, imageQuality: 85);
    if (picked != null) setState(() => _logoFile = File(picked.path));
  }

  InputDecoration _decoration({String? hint, Widget? prefix}) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(fontFamily: 'Lora', fontSize: 13.sp, color: Colors.grey),
      prefixIcon: prefix,
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: AppColors.borderColor.withOpacity(.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.4),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: const BorderSide(color: Colors.red),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
    );
  }

  Text _label(String s) => Text(
    s,
    style: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 13.5.sp,
      color: AppColors.textColor,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<SportBloc>()..add(LoadSportsEvent())),
        BlocProvider(create: (_) => TeamCreateBloc(getIt<CreateTeamUseCase>())),
      ],
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            'Create Team',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: AppColors.textColor,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Form(
              key: _formKey,
              child: BlocConsumer<TeamCreateBloc, TeamCreateState>(
                listener: (context, state) async {
                  if (state.team != null) {
                    final nav = Navigator.of(context);
                    if (nav.canPop()) {
                      // ✅ إذا الصفحة مفتوحة عبر push(): لا نعرض Flushbar هون—نرجع النتيجة فقط
                      nav.pop(state.team);
                    } else {
                      // ✅ إذا تبويب: نعرض رسالة النجاح وننظف الحقول
                      CustomSnackbar.show(
                        context,
                        message: "Team created successfully",
                        isError: false,
                      );
                      _nameCtrl.clear();
                      setState(() {
                        _selectedSportId = null;
                        _logoFile = null;
                      });
                    }
                  }

                  if (state.error != null) {
                    var msg = state.error!;
                    if (msg.contains('captin_id')) msg = 'The selected captain is invalid';
                    if (msg.contains('sport_id')) msg = 'The selected sport is invalid';
                    CustomSnackbar.show(
                      context,
                      message: msg,
                      isError: true,
                    );
                  }
                },
                builder: (context, state) {
                  return Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.06),
                          blurRadius: 16.r,
                          offset: Offset(0, 6.h),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _label('Team name'),
                        SizedBox(height: 6.h),
                        TextFormField(
                          controller: _nameCtrl,
                          style: TextStyle(fontFamily: 'Lora', fontSize: 14.sp),
                          decoration: _decoration(
                            hint: 'e.g. Falcons',
                            prefix: const Icon(Icons.badge_outlined),
                          ),
                          validator: (v) =>
                          (v == null || v.trim().isEmpty) ? 'Required' : null,
                        ),
                        SizedBox(height: 14.h),

                        _label('Sport'),
                        SizedBox(height: 6.h),
                        BlocBuilder<SportBloc, SportState>(
                          builder: (context, s) {
                            if (s is SportLoading) {
                              return Container(
                                height: 52.h,
                                padding: EdgeInsets.symmetric(horizontal: 12.w),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14.r),
                                  border: Border.all(
                                    color: AppColors.borderColor.withOpacity(.5),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 18.w,
                                      height: 18.w,
                                      child: const CircularProgressIndicator(strokeWidth: 2),
                                    ),
                                    SizedBox(width: 8.w),
                                    Text('Loading sports...',
                                        style: TextStyle(fontFamily: 'Lora', fontSize: 13.sp)),
                                  ],
                                ),
                              );
                            }
                            if (s is SportLoaded) {
                              final List<SportEntity> sports = s.sports;
                              return DropdownButtonFormField<int>(
                                isExpanded: true,
                                value: _selectedSportId,
                                style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontSize: 14.sp,
                                  color: AppColors.textColor,
                                ),
                                decoration: _decoration(
                                  hint: 'Select sport',
                                  prefix: const Icon(Icons.sports_outlined),
                                ),
                                items: sports
                                    .map((sp) => DropdownMenuItem(
                                  value: sp.id,
                                  child: Text(sp.name),
                                ))
                                    .toList(),
                                onChanged: (v) => setState(() => _selectedSportId = v),
                                validator: (v) => v == null ? 'Select a sport' : null,
                              );
                            }
                            if (s is SportError) {
                              return Text(
                                s.message,
                                style: const TextStyle(color: Colors.red, fontFamily: 'Poppins'),
                              );
                            }
                            return SizedBox(height: 52.h);
                          },
                        ),
                        SizedBox(height: 14.h),

                        _label('Logo (optional)'),
                        SizedBox(height: 6.h),
                        InkWell(
                          onTap: _pickLogo,
                          borderRadius: BorderRadius.circular(14.r),
                          child: Container(
                            height: 140.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.r),
                              border: Border.all(color: AppColors.borderColor.withOpacity(.6)),
                              image: _logoFile != null
                                  ? DecorationImage(image: FileImage(_logoFile!), fit: BoxFit.cover)
                                  : null,
                              color: Colors.white,
                            ),
                            child: _logoFile == null
                                ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.add_a_photo_outlined, color: Colors.grey),
                                SizedBox(height: 6.h),
                                Text(
                                  'Tap to choose image',
                                  style: TextStyle(
                                    fontFamily: 'Lora',
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                                : Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.all(8.w),
                                child: IconButton(
                                  onPressed: () => setState(() => _logoFile = null),
                                  icon: const Icon(Icons.close_rounded, color: Colors.white),
                                  style: IconButton.styleFrom(
                                    backgroundColor: Colors.black.withOpacity(0.35),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),

                        SizedBox(
                          width: double.infinity,
                          height: 50.h,
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.check_rounded, color: Colors.white),
                            label: state.loading
                                ? SizedBox(
                              width: 22.w,
                              height: 22.w,
                              child: const CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                                : Text(
                              'Create Team',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: state.loading
                                ? null
                                : () {
                              if (_formKey.currentState?.validate() ?? false) {
                                final req = CreateTeamRequest(
                                  name: _nameCtrl.text.trim(),
                                  captainId: widget.captainId,
                                  sportId: _selectedSportId!,
                                  logoPath: _logoFile?.path,
                                );
                                context
                                    .read<TeamCreateBloc>()
                                    .add(SubmitCreateTeam(req));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.r),
                              ),
                              elevation: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ImageSourceSheet extends StatelessWidget {
  const _ImageSourceSheet();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.w),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40.w,
            height: 4.h,
            margin: EdgeInsets.only(bottom: 8.h),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.photo_library_outlined),
            title: const Text('Choose from gallery', style: TextStyle(fontFamily: 'Poppins')),
            onTap: () => Navigator.pop(context, ImageSource.gallery),
          ),
          ListTile(
            leading: const Icon(Icons.photo_camera_outlined),
            title: const Text('Take a photo', style: TextStyle(fontFamily: 'Poppins')),
            onTap: () => Navigator.pop(context, ImageSource.camera),
          ),
        ],
      ),
    );
  }
}
