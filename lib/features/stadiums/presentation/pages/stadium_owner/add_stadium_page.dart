// ignore_for_file: use_build_context_synchronously
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/core/utils/validators.dart';
import 'package:reserving_stadiums_app/features/sport/domain/entities/sport_entity.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_bloc.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_event.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_state.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/usecases/stadium_owner/create_stadium_usecase.dart';
import 'package:reserving_stadiums_app/features/stadium/domain/usecases/stadium_owner/delete_stadium_request_usecase.dart';
import 'package:reserving_stadiums_app/features/stadium/presentation/bloc/stadium_owner/add_stadium/stadium_bloc.dart';
import 'package:reserving_stadiums_app/features/stadium/presentation/widgets/add_stadium_loading.dart';
import 'package:reserving_stadiums_app/features/stadium/presentation/widgets/choose_sport_dropdown_field.dart';
import 'package:reserving_stadiums_app/shared/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/shared/widgets/loading.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';

import '../../../../home/presentation/widgets/stadium_owner/stadium_owner_shell.dart';
import '../../../domain/entities/stadium_owner/stadium_entity.dart';
import '../../../domain/usecases/stadium_owner/create_stadium_usecase.dart';
import '../../bloc/stadium_owner/add_stadium/stadium_bloc.dart';
import '../../widgets/stadium_owner/add_stadium_loading.dart';
import '../../widgets/stadium_owner/choose_sport_dropdown_field.dart';

class AddStadiumPage extends StatefulWidget {
  const AddStadiumPage({super.key});

  @override
  State<AddStadiumPage> createState() => _CreateStadiumPageState();
}

class _CreateStadiumPageState extends State<AddStadiumPage> {
  final _formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();

  final _nameCtrl = TextEditingController();
  final _locationCtrl = TextEditingController();
  final _descriptionCtrl = TextEditingController();
  final _lengthCtrl = TextEditingController();
  final _widthCtrl = TextEditingController();
  final _ownerCtrl = TextEditingController();
  final List<File> _photos = [];
  final ImagePicker _picker = ImagePicker();

  SportEntity? selectedSport;

  Future<void> _pickPhoto() async {
    final picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() => _photos.add(File(picked.path)));
    }
  }

  Future<void> _showSinglePhoto(File file) async {
    await showDialog(
      context: context,
      barrierColor: Colors.black54,
      builder: (_) => Dialog(
        insetPadding: EdgeInsets.all(16.w),
        backgroundColor: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: Image.file(
            file,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _nameCtrl.dispose();
    _lengthCtrl.dispose();
    _widthCtrl.dispose();
    _ownerCtrl.dispose();
    _locationCtrl.dispose();
    _descriptionCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => StadiumBloc(getIt<CreateStadiumUsecase>(),
                getIt<DeleteStadiumRequestUsecase>())),
        BlocProvider(create: (_) => getIt<SportBloc>()..add(LoadSportsEvent())),
      ],
      child: Scaffold(
        body: SafeArea(
          child:
              BlocConsumer<SportBloc, SportState>(listener: (context, state) {
            if (state is SportError) {
              Navigator.of(context).pop();
              CustomSnackbar.show(context,
                  message: state.message, isError: true);
            }
          }, builder: (context, sportState) {
            if (sportState is SportLoading) {
              return const AddStadiumLoading();
            }

            // if (sportState is SportError) {
            //   Navigator.of(context).pop();
            //   CustomSnackbar.show(context,
            //       message: sportState.message, isError: true);
            // }

            if (sportState is SportLoaded) {
              final sports = sportState.sports;
              return Padding(
                padding: EdgeInsets.all(8.w),
                child: BlocConsumer<StadiumBloc, StadiumState>(
                  listener: (context, state) async {
                    if (state.isLoading) {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) => const CustomLoadingPage(),
                      );
                    } else if (state.isSuccess) {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const StadiumOwnerShell(),
                        ),
                        (route) => false,
                      );
                      CustomSnackbar.show(context,
                          message: 'Request added successfully!',
                          isError: false);
                    } else if (state.errorMessage != null) {
                      Navigator.of(context).pop();
                      CustomSnackbar.show(context,
                          message: state.errorMessage!, isError: true);
                    }
                  },
                  builder: (context, state) {
                    return Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back_ios, size: 24.r)),
                              Text(
                                "Add stadium",
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
                                                "Stadium data",
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
                                                hintText: "Name",
                                                controller: _nameCtrl,
                                                validator:
                                                    Validators.required(),
                                              ),
                                              CustomTextField(
                                                icon: Icons.location_on,
                                                hintText: "Location",
                                                controller: _locationCtrl,
                                                validator:
                                                    Validators.required(),
                                              ),
                                              CustomTextField(
                                                icon: Icons.phone,
                                                hintText: "Owner Number",
                                                controller: _ownerCtrl,
                                                keyboardType:
                                                    TextInputType.phone,
                                                validator:
                                                    Validators.required(),
                                              ),
                                              ChooseSportDropdownField(
                                                onChanged: (value) {
                                                  if (value != null) {
                                                    setState(() {
                                                      selectedSport = value;
                                                    });
                                                  }
                                                  return null;
                                                },
                                                items: sports.map((sport) {
                                                  return DropdownMenuItem<
                                                      SportEntity>(
                                                    value: sport,
                                                    child: Text(sport.name),
                                                  );
                                                }).toList(),
                                              ),
                                              CustomTextField(
                                                icon: Icons.height,
                                                hintText: "Length",
                                                controller: _lengthCtrl,
                                                validator:
                                                    Validators.required(),
                                                keyboardType:
                                                    TextInputType.number,
                                              ),
                                              CustomTextField(
                                                icon: Icons.width_full,
                                                hintText: "Width",
                                                controller: _widthCtrl,
                                                validator:
                                                    Validators.required(),
                                                keyboardType:
                                                    TextInputType.number,
                                              ),
                                              CustomTextField(
                                                icon: Icons.description,
                                                hintText: "Description",
                                                controller: _descriptionCtrl,
                                                validator:
                                                    Validators.required(),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(8.w),
                                                child: Wrap(
                                                  spacing: 8.w,
                                                  runSpacing: 8.h,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () async {
                                                        await _pickPhoto();
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            top: 2.w),
                                                        width: 50.w,
                                                        height: 50.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  Colors.grey),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.r),
                                                        ),
                                                        child: const Icon(
                                                            Icons.add_a_photo),
                                                      ),
                                                    ),
                                                    for (var i = 0;
                                                        i < _photos.length;
                                                        i++)
                                                      Stack(
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () =>
                                                                _showSinglePhoto(
                                                                    _photos[i]),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.r),
                                                              child: Container(
                                                                width: 50.h,
                                                                height: 50.w,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 2
                                                                            .w),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                          .green[
                                                                      100],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                ),
                                                                child: const Icon(
                                                                    Icons
                                                                        .photo_outlined,
                                                                    color: Colors
                                                                        .green),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            top: -2,
                                                            right: -2,
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => setState(
                                                                  () => _photos
                                                                      .removeAt(
                                                                          i)),
                                                              child: const Icon(
                                                                Icons
                                                                    .cancel_outlined,
                                                                color:
                                                                    Colors.red,
                                                                size: 20,
                                                                weight: 900,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 20.h),
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
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 24.w, vertical: 14.h),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                          ),
                                        ),
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            final entity = StadiumEntity(
                                              sportId:
                                                  selectedSport!.id.toString(),
                                              name: _nameCtrl.text,
                                              location: _locationCtrl.text,
                                              description:
                                                  _descriptionCtrl.text,
                                              length: _lengthCtrl.text,
                                              width: _widthCtrl.text,
                                              ownerNumber: _ownerCtrl.text,
                                              photos: [],
                                            );

                                            context.read<StadiumBloc>().add(
                                                  CreateStadiumSubmitted(
                                                    stadiumEntity: entity,
                                                    photosFiles: _photos,
                                                  ),
                                                );
                                          }
                                        },
                                        child: Text(
                                          "Request",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.white,
                                            fontFamily: 'Montserrat',
                                          ),
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
                    );
                  },
                ),
              );
            }
            return const SizedBox.shrink();
          }),
        ),
      ),
    );
  }
}
