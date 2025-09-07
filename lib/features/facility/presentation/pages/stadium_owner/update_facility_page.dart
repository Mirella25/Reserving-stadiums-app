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
import 'package:reserving_stadiums_app/features/facility/presentation/bloc/stadium_owner/update_facility/update_facility_bloc.dart';
import 'package:reserving_stadiums_app/shared/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/shared/widgets/error_message.dart';
import 'package:reserving_stadiums_app/shared/widgets/loading.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';

class UpdateFacilityPage extends StatefulWidget {
  final int stadiumId;
  final int? facilityId;
  final String name;
  final String quantity;

  const UpdateFacilityPage({
    super.key,
    required this.stadiumId,
    required this.facilityId,
    required this.name,
    required this.quantity,
  });

  @override
  State<UpdateFacilityPage> createState() => _UpdateFacilityPageState();
}

class _UpdateFacilityPageState extends State<UpdateFacilityPage> {
  final _formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();

  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _quantityCtrl = TextEditingController();

  final List<File> _photos = [];
  final ImagePicker _picker = ImagePicker();

  bool _isLoadingDialogShown = false;

  @override
  void initState() {
    super.initState();
    // اعبي الحقول ابتداءً من الواجهة اللي جابتها الصفحة
    _nameCtrl.text = widget.name;
    _quantityCtrl.text = widget.quantity;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _nameCtrl.dispose();
    _quantityCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickPhoto() async {
    try {
      final picked = await _picker.pickImage(source: ImageSource.gallery);
      if (picked != null) {
        setState(() => _photos.add(File(picked.path)));
      }
    } catch (e) {
      // اختياري: اظهار خطأ بسيط
      CustomSnackbar.show(context,
          message: 'Failed to pick image', isError: true);
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

  void _blocListener(BuildContext ctx, UpdateFacilityState state) {
    // show loading dialog
    if (state.isLoading && !_isLoadingDialogShown) {
      _isLoadingDialogShown = true;
      showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (_) => const CustomLoadingPage(),
      );
      return;
    }

    // dismiss loading dialog when not loading
    if (!state.isLoading && _isLoadingDialogShown) {
      _isLoadingDialogShown = false;
      if (Navigator.canPop(ctx)) Navigator.of(ctx).pop();
    }

    // success
    if (state.isSuccess) {
      if (mounted) {
        Navigator.of(ctx).pop(true); // return true to caller
        CustomSnackbar.show(ctx,
            message: 'Facility updated successfully!', isError: false);
      }
    }

    // error
    if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
      if (mounted) {
        CustomSnackbar.show(ctx, message: state.errorMessage!, isError: true);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UpdateFacilityBloc>(
      create: (_) => UpdateFacilityBloc(
          getIt()) /* adjust getIt<UpdateFacilityUsecase>() if necessary */,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.w),
            child: BlocConsumer<UpdateFacilityBloc, UpdateFacilityState>(
              listener: _blocListener,
              builder: (context, state) {
                // إذا في خطأ عام قبل ال build
                if (state.errorMessage != null &&
                    state.errorMessage!.isNotEmpty &&
                    !state.isLoading &&
                    !state.isSuccess) {
                  // ممكن تظهر رسالة خطأ بدلية، لكن لا ترجّع الصفحة هنا
                }

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
                            "Update facility",
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontFamily: 'Poppins',
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 6.h),
                          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 70.h),
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

                                          CustomTextField(
                                            icon: Icons.person,
                                            hintText: "Name",
                                            controller: _nameCtrl,
                                            validator: Validators.required(),
                                          ),

                                          CustomTextField(
                                            icon: Icons.confirmation_number,
                                            hintText: "Quantity",
                                            controller: _quantityCtrl,
                                            keyboardType: TextInputType.number,
                                            validator: Validators.required(),
                                          ),

                                          // photos area
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
                                                                  .circular(
                                                                      8.r),
                                                          child: Container(
                                                            width: 50.w,
                                                            height: 50.h,
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
                                                                color: Colors
                                                                    .green),
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
                                                            Icons
                                                                .cancel_outlined,
                                                            color: Colors.red,
                                                            size: 20,
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

                              // bottom update button
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
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                      ),
                                    ),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        final entity = FacilityEntity(
                                          id: widget.facilityId,
                                          stadiumId: widget.stadiumId,
                                          name: _nameCtrl.text,
                                          quantity: _quantityCtrl.text,
                                          photos: [], // send photos via photosFiles in event
                                        );

                                        // أسم الحدث والحقول قد تختلف عندك — عدّل إذا لزم
                                        context.read<UpdateFacilityBloc>().add(
                                              UpdateFacilitySubmitted(
                                                facilityEntity: entity,
                                                photosFiles: _photos,
                                                id: widget.facilityId!,
                                              ),
                                            );
                                      }
                                    },
                                    child: Text(
                                      "Update",
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
          ),
        ),
      ),
    );
  }
}
