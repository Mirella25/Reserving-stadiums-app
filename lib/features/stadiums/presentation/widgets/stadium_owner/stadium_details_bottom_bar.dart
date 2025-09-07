import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/bloc/stadium_owner/view_stadium_details/view_stadium_details_bloc.dart';

class StadiumDetailsBottomBar extends StatelessWidget {
  const StadiumDetailsBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)]),
      height: 90.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text('Deposit',
                      style: TextStyle(
                          fontFamily: 'Lora',
                          color: Colors.grey,
                          fontWeight: FontWeight.w500)),
                  SizedBox(width: 4.h),
                  BlocBuilder<ViewStadiumDetailsBloc, ViewStadiumDetailsState>(
                    builder: (context, state) {
                      final price = state.stadium?.deposit ?? '---';
                      final priceStr = price is num
                          ? '$price\$'
                          : (price?.toString() ?? '---');
                      return Text(priceStr,
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              color: AppColors.primaryColor));
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  const Text('Duration',
                      style: TextStyle(
                          fontFamily: 'Lora',
                          color: Colors.grey,
                          fontWeight: FontWeight.w500)),
                  SizedBox(width: 4.h),
                  BlocBuilder<ViewStadiumDetailsBloc, ViewStadiumDetailsState>(
                    builder: (context, state) {
                      final duration =
                          state.stadium?.duration?.toString() ?? '--';
                      return Text(duration,
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              color: AppColors.primaryColor));
                    },
                  ),
                ],
              ),
            ],
          ),
          BlocBuilder<ViewStadiumDetailsBloc, ViewStadiumDetailsState>(
            builder: (context, state) {
              final price = state.stadium?.price;
              final priceStr = price == null
                  ? '---'
                  : (price is num ? '${price.toString()}\$' : price.toString());
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(priceStr,
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Colors.redAccent)),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
