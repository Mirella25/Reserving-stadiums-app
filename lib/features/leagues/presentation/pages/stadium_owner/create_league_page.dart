import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/utils/validators.dart';
import 'package:reserving_stadiums_app/features/leagues/domain/entities/stadium_owner/league_entity.dart';
import 'package:reserving_stadiums_app/features/leagues/presentation/bloc/stadium_owner/create_league/create_league_bloc.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/bloc/stadium_owner/view_stadiums/view_stadiums_bloc.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/shared/widgets/custom_dropdown_field.dart';
import 'package:reserving_stadiums_app/shared/widgets/custom_text_field.dart';
import 'package:reserving_stadiums_app/shared/widgets/loading.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';

class CreateLeaguePage extends StatefulWidget {
  const CreateLeaguePage({super.key});

  @override
  State<CreateLeaguePage> createState() => _CreateLeaguePageState();
}

class _CreateLeaguePageState extends State<CreateLeaguePage> {
  bool _isLoadingDialogShown = false;
  final _formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();

  final _nameCtrl = TextEditingController();
  final _priceCtrl = TextEditingController();
  final _prizeCtrl = TextEditingController();
  final _startDateCtrl = TextEditingController();
  final _endDateCtrl = TextEditingController();
  final _descriptionCtrl = TextEditingController();

  StadiumEntity? _selectedStadium;
  String _selectedStatus = 'active';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _priceCtrl.dispose();
    _prizeCtrl.dispose();
    _startDateCtrl.dispose();
    _endDateCtrl.dispose();
    _scrollController.dispose();
    _descriptionCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDate(TextEditingController ctrl) async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1);
    final lastDate = DateTime(now.year + 5);
    final picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    if (picked != null) {
      ctrl.text = picked.toIso8601String().split('T').first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ViewStadiumsBloc>()..add(LoadStadiumsEvent()),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.w),
            child: BlocConsumer<CreateLeagueBloc, CreateLeagueState>(
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
                  if (Navigator.canPop(context)) Navigator.of(context).pop();
                }

                if (state.isSuccess) {
                  Navigator.of(context).pop(true);
                  CustomSnackbar.show(context,
                      message: 'League added successfully!', isError: false);
                }

                if (state.errorMessage != null &&
                    state.errorMessage!.isNotEmpty) {
                  CustomSnackbar.show(context,
                      message: state.errorMessage!, isError: true);
                }
              },
              builder: (context, createState) {
                return Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.arrow_back_ios, size: 24.r),
                          ),
                          Text(
                            "Add league",
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
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
                                            "League data",
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
                                            icon: Icons.emoji_events,
                                            hintText: "Name",
                                            controller: _nameCtrl,
                                            validator: Validators.required(),
                                          ),
                                          Row(
                                            children: [
                                              const Expanded(
                                                flex: 1,
                                                child: Icon(
                                                  Icons.stadium,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.all(8.0.w),
                                                  child: BlocBuilder<
                                                      ViewStadiumsBloc,
                                                      ViewStadiumsState>(
                                                    builder: (context, state) {
                                                      return DropdownButtonFormField<
                                                          StadiumEntity>(
                                                        iconEnabledColor:
                                                            Colors.grey,
                                                        hint: const Text(
                                                          "Stadium",
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontFamily: 'Lora',
                                                          ),
                                                        ),
                                                        decoration:
                                                            const InputDecoration(
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        209,
                                                                        208,
                                                                        208)),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        209,
                                                                        208,
                                                                        208)),
                                                          ),
                                                        ),
                                                        value: _selectedStadium,
                                                        validator: (val) =>
                                                            val == null
                                                                ? "Required field"
                                                                : null,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            _selectedStadium =
                                                                val;
                                                          });
                                                        },
                                                        items: state.stadiums
                                                            .map((s) {
                                                          return DropdownMenuItem<
                                                              StadiumEntity>(
                                                            value: s,
                                                            child: Text(s.name),
                                                          );
                                                        }).toList(),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(children: [
                                            const Expanded(
                                              flex: 1,
                                              child: Icon(
                                                Icons.date_range,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: EdgeInsets.all(8.w),
                                                child: TextFormField(
                                                  controller: _startDateCtrl,
                                                  readOnly: true,
                                                  onTap: () =>
                                                      _pickDate(_startDateCtrl),
                                                  validator:
                                                      Validators.required(),
                                                  decoration:
                                                      const InputDecoration(
                                                    hintStyle: TextStyle(
                                                      color: Colors.grey,
                                                      fontFamily: 'Lora',
                                                    ),
                                                    hintText: 'Start time',
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Color.fromARGB(
                                                              255,
                                                              209,
                                                              208,
                                                              208)),
                                                    ),
                                                    suffixIcon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.grey,
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Color.fromARGB(
                                                              255,
                                                              209,
                                                              208,
                                                              208)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                          Row(children: [
                                            const Expanded(
                                              flex: 1,
                                              child: Icon(
                                                Icons.date_range,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: EdgeInsets.all(8.w),
                                                child: TextFormField(
                                                  controller: _endDateCtrl,
                                                  readOnly: true,
                                                  onTap: () =>
                                                      _pickDate(_endDateCtrl),
                                                  validator:
                                                      Validators.required(),
                                                  decoration:
                                                      const InputDecoration(
                                                    hintStyle: TextStyle(
                                                      color: Colors.grey,
                                                      fontFamily: 'Lora',
                                                    ),
                                                    hintText: 'End time',
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Color.fromARGB(
                                                              255,
                                                              209,
                                                              208,
                                                              208)),
                                                    ),
                                                    suffixIcon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.grey,
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Color.fromARGB(
                                                              255,
                                                              209,
                                                              208,
                                                              208)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                          CustomTextField(
                                            icon: Icons.attach_money,
                                            hintText: "Price",
                                            controller: _priceCtrl,
                                            validator: Validators.required(),
                                            keyboardType: const TextInputType
                                                .numberWithOptions(
                                                decimal: true),
                                          ),
                                          CustomTextField(
                                            icon: Icons.military_tech,
                                            hintText: "Prize",
                                            controller: _prizeCtrl,
                                            validator: Validators.required(),
                                          ),
                                          CustomTextField(
                                            icon: Icons.description,
                                            hintText: "Description",
                                            controller: _descriptionCtrl,
                                            validator: Validators.required(),
                                          ),
                                          CustomDropdownField(
                                              hintText: "Status",
                                              itemList: const [
                                                DropdownMenuItem(
                                                  value: 'active',
                                                  child: Text('active'),
                                                ),
                                                DropdownMenuItem(
                                                  value: 'pending',
                                                  child: Text('pending'),
                                                ),
                                                DropdownMenuItem(
                                                  value: 'finished',
                                                  child: Text('finished'),
                                                ),
                                              ],
                                              onChanged: (v) {
                                                if (v != null) {
                                                  setState(() {
                                                    _selectedStatus = v;
                                                  });
                                                }
                                              },
                                              icon: Icons.list),
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
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                      ),
                                    ),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        // if (_selectedStadium == null) {
                                        //   CustomSnackbar.show(context,
                                        //       message:
                                        //           'Please select a stadium',
                                        //       isError: true);
                                        //   return;
                                        // }
                                        final entity = LeagueEntity(
                                          name: _nameCtrl.text,
                                          startDate: _startDateCtrl.text,
                                          endDate: _endDateCtrl.text,
                                          price: double.tryParse(
                                                  _priceCtrl.text) ??
                                              0.0,
                                          prize: _prizeCtrl.text,
                                          status: _selectedStatus,
                                          stadiumId: _selectedStadium!.id!,
                                          description: _descriptionCtrl.text,
                                        );

                                        context.read<CreateLeagueBloc>().add(
                                              CreateLeagueSubmitted(
                                                  league: entity),
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
          ),
        ),
      ),
    );
  }
}
