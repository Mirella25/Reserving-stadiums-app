// ignore_for_file: use_build_context_synchronously
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/core/utils/validators.dart';
import 'package:reserving_stadiums_app/features/facility/domain/entities/stadium_owner/facility_entity.dart';
import 'package:reserving_stadiums_app/features/facility/domain/usecases/stadium_owner/create_facility_usecase.dart';
import 'package:reserving_stadiums_app/features/facility/presentation/bloc/stadium_owner/add_facility/add_facility_bloc.dart';
import 'package:reserving_stadiums_app/shared/widgets/custom_dropdown_field.dart';

import 'package:reserving_stadiums_app/shared/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/shared/widgets/loading.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';

class CreateFacilityPage extends StatefulWidget {
  final int? stadiumId;
  const CreateFacilityPage({super.key, required this.stadiumId});

  @override
  State<CreateFacilityPage> createState() => _CreateStadiumPageState();
}

class _CreateStadiumPageState extends State<CreateFacilityPage> {
  final _formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();

  final _nameCtrl = TextEditingController();
  final _quantityCtrl = TextEditingController();
  String? _selectedFacility;
  final List<File> _photos = [];
  final ImagePicker _picker = ImagePicker();
  bool _isLoadingDialogShown = false;

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
    _quantityCtrl.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) => CreateFacilityBloc(
                    getIt<CreateFacilityUsecase>(),
                  )),
        ],
        child: Scaffold(
            body: SafeArea(
                child: Padding(
          padding: EdgeInsets.all(8.w),
          child: BlocConsumer<CreateFacilityBloc, CreateFacilityState>(
            listener: (context, state) async {
              if (state.isLoading && !_isLoadingDialogShown) {
                _isLoadingDialogShown = true;
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (_) => const CustomLoadingPage(),
                );
                return;
              }

              if (!state.isLoading && _isLoadingDialogShown) {
                _isLoadingDialogShown = false;
                if (Navigator.canPop(context)) {
                  Navigator.of(context).pop();
                }
              }

              if (state.isSuccess) {
                Navigator.of(context).pop(true);
                CustomSnackbar.show(context,
                    message: 'Facility added successfully!', isError: false);
              }

              if (state.errorMessage != null) {
                CustomSnackbar.show(
                  context,
                  message: state.errorMessage!,
                  isError: true,
                );
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
                          "Add facility",
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
                                          "Facility data",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 22.sp,
                                            fontFamily: 'Lora',
                                            color: Colors.grey[700],
                                            fontWeight: FontWeight.w100,
                                          ),
                                        ),
                                        SizedBox(height: 16.h),
                                        // CustomTextField(
                                        //   icon: Icons.coffee_maker,
                                        //   hintText: "Name",
                                        //   controller: _nameCtrl,
                                        //   validator: Validators.required(),
                                        // ),
                                        CustomDropdownField(
                                          hintText: 'Name',
                                          itemList: [
                                            'Toilets',
                                            'Reception',
                                            'Buffet',
                                            'Cafeteria',
                                            'Sports Equipment',
                                            'Locker Rooms',
                                            'First Aid Room',
                                            'Parking',
                                            'Wi-Fi',
                                            'Spectator Seats',
                                            'Display Screen',
                                            'Sound System',
                                            'Night Lighting',
                                          ]
                                              .map((e) =>
                                                  DropdownMenuItem<String>(
                                                    value: e,
                                                    child: Text(e),
                                                  ))
                                              .toList(),
                                          icon: Icons.room_service,
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedFacility =
                                                  value as String?;
                                            });
                                            return null;
                                          },
                                        ),
                                        CustomTextField(
                                          icon: Icons.format_list_numbered,
                                          hintText: "Quantity",
                                          controller: _quantityCtrl,
                                          validator: Validators.required(),
                                          keyboardType: TextInputType.number,
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
                                                  margin:
                                                      EdgeInsets.only(top: 2.w),
                                                  width: 50.w,
                                                  height: 50.h,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.grey),
                                                    borderRadius:
                                                        BorderRadius.circular(
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
                                                                .circular(8.r),
                                                        child: Container(
                                                          width: 50.h,
                                                          height: 50.w,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 2.w),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors
                                                                .green[100],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          child: const Icon(
                                                              Icons
                                                                  .photo_outlined,
                                                              color:
                                                                  Colors.green),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: -2,
                                                      right: -2,
                                                      child: GestureDetector(
                                                        onTap: () => setState(
                                                            () => _photos
                                                                .removeAt(i)),
                                                        child: const Icon(
                                                          Icons.cancel_outlined,
                                                          color: Colors.red,
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
                                    backgroundColor: AppColors.primaryColor,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 24.w, vertical: 14.h),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      final entity = FacilityEntity(
                                        name: _selectedFacility.toString(),
                                        photos: [],
                                        stadiumId: widget.stadiumId!,
                                        quantity: _quantityCtrl.text,
                                      );

                                      context.read<CreateFacilityBloc>().add(
                                            CreateFacilitySubmitted(
                                              facilityEntity: entity,
                                              photosFiles: _photos,
                                            ),
                                          );
                                    }
                                  },
                                  child: Text(
                                    "Create",
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
        ))));
  }
}
