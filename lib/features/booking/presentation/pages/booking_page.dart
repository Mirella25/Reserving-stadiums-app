import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import '../../domain/entities/stadium_time_entity.dart';
import '../bloc/booking_times_bloc.dart';
import '../bloc/booking_times_event.dart';
import '../bloc/booking_times_state.dart';

class BookingPage extends StatefulWidget {
  final int stadiumId;

  const BookingPage({super.key, required this.stadiumId});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int? selectedTimeId;
  DateTime selectedDate = DateTime.now();

  String _normalizeTime(String time) {
    // إذا الوقت بدون ثواني نضيف ":00"
    if (time.length == 5) {
      return "$time:00";
    }
    return time;
  }

  @override
  void initState() {
    super.initState();
    context.read<BookingTimesBloc>().add(LoadBookingTimesEvent(widget.stadiumId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Date & Time')),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select a Date',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 30)),
                  builder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: ColorScheme.light(
                          primary: AppColors.primaryColor,
                          onPrimary: Colors.white,
                          onSurface: Colors.black,
                        ),
                        textButtonTheme: TextButtonThemeData(
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      child: child!,
                    );
                  },
                );
                if (pickedDate != null) {
                  setState(() => selectedDate = pickedDate);
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.borderColor),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.calendar_today),
                    SizedBox(width: 8.w),
                    Text(
                      "${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}",
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'Select Time Slot',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: BlocBuilder<BookingTimesBloc, BookingTimesState>(
                builder: (context, state) {
                  if (state is BookingTimesLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is BookingTimesLoaded) {
                    final times = state.times;
                    if (times.isEmpty) {
                      return Center(
                        child: Text(
                          "No time available",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      );
                    }

                    return GridView.builder(
                      itemCount: times.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 20.w,
                        mainAxisSpacing: 10.h,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        final slot = times[index];
                        final isAvailable = slot.status == 'available';
                        final isSelected = selectedTimeId == slot.id;

                        final startFormatted = DateFormat.Hm().format(
                          DateFormat("HH:mm:ss").parse(_normalizeTime(slot.startTime)),
                        );
                        final endFormatted = DateFormat.Hm().format(
                          DateFormat("HH:mm:ss").parse(_normalizeTime(slot.endTime)),
                        );

                        return GestureDetector(
                          onTap: isAvailable
                              ? () {
                            setState(() => selectedTimeId = slot.id);
                          }
                              : null,
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                            decoration: BoxDecoration(
                              color: isAvailable
                                  ? (isSelected
                                  ? AppColors.primaryColor
                                  : Colors.green[100])
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: isSelected
                                  ? [
                                BoxShadow(
                                  color: AppColors.primaryColor.withOpacity(0.3),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ]
                                  : [],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.access_time,
                                    size: 16.sp,
                                    color: isSelected ? Colors.white : Colors.black),
                                SizedBox(height: 4.h),
                                Text(
                                  "$startFormatted\n$endFormatted",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: isAvailable
                                        ? (isSelected ? Colors.white : Colors.black)
                                        : Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else if (state is BookingTimesError) {
                    return Center(
                      child: Text(
                        "Failed to load times",
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),
            SizedBox(height: 12.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: selectedTimeId == null
                    ? null
                    : () {
                  print("تم اختيار الوقت: $selectedTimeId");
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  backgroundColor: AppColors.primaryColor,
                  disabledBackgroundColor: Colors.grey,
                ),
                child: const Text("Confirm Booking",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Montserrat')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
