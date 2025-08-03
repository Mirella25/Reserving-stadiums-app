import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/core/utils/validators.dart';

import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_entity.dart';
import 'package:reserving_stadiums_app/features/profile/domain/usecases/create_profile_usecase.dart';
import 'package:reserving_stadiums_app/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:reserving_stadiums_app/shared/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/features/profile/presentation/pages/profile_photo_page.dart';
import 'package:reserving_stadiums_app/shared/widgets/custom_dropdown_field.dart';
import 'package:reserving_stadiums_app/shared/widgets/date_picker_dropdown.dart';

import '../../../home/presentation/pages/player/player_home_page.dart';

class CreateProfileDataPage extends StatefulWidget {
  const CreateProfileDataPage({super.key});

  @override
  State<CreateProfileDataPage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfileDataPage> {
  final _formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();
  final _experienceController = TextEditingController();
  final _positionsController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  String? selectedRole;
  String? selectedGender;
  String? birthYMD;
  String? selectedSport;

  @override
  void dispose() {
    _scrollController.dispose();
    // _scrollController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _addressController.dispose();
    _phoneController.dispose();
    _experienceController.dispose();
    _positionsController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(getIt<CreateProfileUsecase>()),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.w),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
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
                      margin: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 10.h),
                      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 60.h),
                              child: Scrollbar(
                                controller: _scrollController,
                                thumbVisibility: true,
                                thickness: 6.w,
                                radius: Radius.circular(3.r),
                                child: SingleChildScrollView(
                                  controller: _scrollController,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      SizedBox(height: 12.h),
                                      Text(
                                        "Profile data",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          fontFamily: 'Lora',
                                          color: Colors.grey[700],
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                      SizedBox(height: 16.h),
                                      CustomTextField(
                                        icon: Icons.person,
                                        hintText: "First Name",
                                        controller: _firstNameController,
                                        validator: (value) =>
                                            Validators.combine([
                                          Validators.required(),
                                        ])(value),
                                      ),
                                      CustomTextField(
                                        icon: Icons.person_outline,
                                        hintText: "Last Name",
                                        controller: _lastNameController,
                                        validator: (value) =>
                                            Validators.combine([
                                          Validators.required(),
                                        ])(value),
                                      ),
                                      Row(
                                        children: [
                                          const Expanded(
                                              flex: 1,
                                              child: Icon(Icons.calendar_today,
                                                  color: Colors.grey)),
                                          Expanded(
                                            flex: 4,
                                            child: DatePickerDropdownField(
                                              onDateChanged: (ymd) {
                                                birthYMD = ymd;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      CustomTextField(
                                        icon: Icons.location_on,
                                        hintText: "Address",
                                        controller: _addressController,
                                        validator: (value) =>
                                            Validators.combine([
                                          Validators.required(),
                                        ])(value),
                                      ),
                                      CustomTextField(
                                        icon: Icons.phone,
                                        hintText: "Phone Number",
                                        controller: _phoneController,
                                        keyboardType: TextInputType.phone,
                                        validator: (value) =>
                                            Validators.combine([
                                          Validators.required(),
                                        ])(value),
                                      ),
                                      CustomDropdownField(
                                        icon: Icons.sports,
                                        hintText: "Sport",
                                        validator: (value) =>
                                            Validators.combine([
                                          Validators.required(),
                                        ])(value),
                                        itemList: const [
                                          DropdownMenuItem(
                                            value: "football",
                                            child: Text("Football"),
                                          ),
                                          DropdownMenuItem(
                                            value: "tennis",
                                            child: Text("Tennis"),
                                          ),
                                          DropdownMenuItem(
                                            value: "basketball",
                                            child: Text("Basketball"),
                                          ),
                                        ],
                                        onChanged: (String? value) {
                                          if (value != null) {
                                            setState(() {
                                              selectedSport = value;
                                            });
                                          }
                                          return null;
                                        },
                                      ),
                                      CustomDropdownField(
                                        icon: Icons.wc,
                                        hintText: "Gender",
                                        validator: (value) =>
                                            Validators.combine([
                                          Validators.required(),
                                        ])(value),
                                        itemList: const [
                                          DropdownMenuItem(
                                            value: "male",
                                            child: Text("Male"),
                                          ),
                                          DropdownMenuItem(
                                            value: "female",
                                            child: Text("Female"),
                                          ),
                                        ],
                                        onChanged: (String? value) {
                                          if (value != null) {
                                            setState(() {
                                              selectedGender = value;
                                            });
                                          }
                                          return null;
                                        },
                                      ),
                                      CustomTextField(
                                        icon: Icons.height,
                                        hintText: "Height (cm)",
                                        controller: _heightController,
                                        validator: (value) =>
                                            Validators.combine([
                                          Validators.required(),
                                        ])(value),
                                        keyboardType: TextInputType.number,
                                      ),
                                      CustomTextField(
                                        icon: Icons.fitness_center,
                                        hintText: "Weight (kg)",
                                        controller: _weightController,
                                        validator: (value) =>
                                            Validators.combine([
                                          Validators.required(),
                                        ])(value),
                                        keyboardType: TextInputType.number,
                                      ),
                                      CustomTextField(
                                        icon: Icons.sports_soccer,
                                        hintText: "Positions Played",
                                        controller: _positionsController,
                                        validator: (value) =>
                                            Validators.combine([
                                          Validators.required(),
                                        ])(value),
                                      ),
                                      CustomTextField(
                                        icon: Icons.work,
                                        hintText: "Years of Experience",
                                        controller: _experienceController,
                                        validator: (value) =>
                                            Validators.combine([
                                          Validators.required(),
                                        ])(value),
                                        keyboardType: TextInputType.number,
                                      ),
                                      SizedBox(height: 20.h),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16.w,
                            right: 16.w,
                            bottom: 60.h,
                            child: IgnorePointer(
                              child: Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.grey[200]!,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Padding(
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
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (_) => const HomePage(),
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
                                        backgroundColor: AppColors.primaryColor,
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
                                        final entity = ProfileEntity(
                                          firstName:
                                              _firstNameController.text.trim(),
                                          lastName:
                                              _lastNameController.text.trim(),
                                          birthdate: birthYMD,
                                          address:
                                              _addressController.text.trim(),
                                          phoneNumber:
                                              _phoneController.text.trim(),
                                          mine: selectedRole,
                                          gender: selectedGender,
                                          yearsOfExperience:
                                              _experienceController.text.trim(),
                                          positionsPlayed:
                                              _positionsController.text.trim(),
                                          sport: selectedSport,
                                          height: _heightController.text.trim(),
                                          weight: _weightController.text.trim(),
                                        );
                                        if (_formKey.currentState!.validate()) {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (_) => BlocProvider(
                                                  create: (_) => ProfileBloc(getIt<
                                                      CreateProfileUsecase>()),
                                                  child: CreateProfilePhotoPage(
                                                    profileEntity: entity,
                                                  )),
                                            ),
                                          );
                                        }
                                      },
                                      child: Text(
                                        "Next",
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
