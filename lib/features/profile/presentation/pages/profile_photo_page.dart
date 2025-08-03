import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';

import 'package:reserving_stadiums_app/features/home/presentation/pages/player/player_home_page.dart';
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_entity.dart';
import 'package:reserving_stadiums_app/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:reserving_stadiums_app/shared/widgets/loading.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';

import '../../../home/presentation/pages/player/player_home_page.dart';

class CreateProfilePhotoPage extends StatefulWidget {
  final ProfileEntity profileEntity;
  const CreateProfilePhotoPage({super.key, required this.profileEntity});

  @override
  State<CreateProfilePhotoPage> createState() => _CreateProfilePhotoPageState();
}

class _CreateProfilePhotoPageState extends State<CreateProfilePhotoPage> {
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image:$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(8.w),
                child: BlocConsumer<ProfileBloc, ProfileState>(
                  listener: (context, state) async {
                    if (state.isLoading) {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) => const CustomLoadingPage(),
                      );
                    }

                    if (state.isSuccess) {
                      Navigator.pop(context);
                      CustomSnackbar.show(context,
                          message: 'Profile created successfully!',
                          isError: false);
                      await Future.delayed(const Duration(milliseconds: 2000));
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const HomePage()),
                      );
                    } else if (state.errorMessage != null) {
                      Navigator.of(context).pop();
                      CustomSnackbar.show(context,
                          message: state.errorMessage!, isError: true);
                    }
                  },
                  builder: (context, state) {
                    return Column(children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back_ios, size: 24.r)),
                          Text(
                            "Create profile",
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontFamily: 'Poppins',
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: 12.h),
                                  Text(
                                    "Profile Photo",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22.sp,
                                      fontFamily: 'Lora',
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  CircleAvatar(
                                    radius: 80,
                                    backgroundColor: Colors.grey[300],
                                    backgroundImage: image != null
                                        ? FileImage(
                                            image!,
                                          )
                                        : null,
                                    child: image == null
                                        ? Icon(Icons.person,
                                            size: 70.sp,
                                            color: Colors.grey[500])
                                        : null,
                                  ),
                                  SizedBox(height: 60.h),
                                  InkWell(
                                    onTap: () async {
                                      await pickImage(ImageSource.gallery);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.upload_file,
                                            color: AppColors.primaryColor),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text('Upload a photo',
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w100,
                                            ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 30.h),
                                  InkWell(
                                    onTap: () async {
                                      await pickImage(ImageSource.camera);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.camera_alt,
                                            color: AppColors.primaryColor),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text('Take a photo',
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w100,
                                            ))
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.w, vertical: 8.h),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.grey,
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 24.w,
                                                vertical: 14.h,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.r),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                MaterialPageRoute(
                                                  builder: (_) =>
                                                      const HomePage(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              "Skip",
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 16.w),
                                        Expanded(
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  AppColors.primaryColor,
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 24.w,
                                                vertical: 14.h,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.r),
                                              ),
                                            ),
                                            onPressed: () {
                                              context.read<ProfileBloc>().add(
                                                    CreateProfileSubmitted(
                                                        profileEntity: widget
                                                            .profileEntity,
                                                        avatarFile: image),
                                                  );
                                            },
                                            child: Text(
                                              "Finish",
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )))
                    ]);
                  },
                ))));
  }
}
