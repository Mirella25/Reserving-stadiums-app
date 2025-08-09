import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/app_colors.dart';

class LeagueDetailsPage extends StatelessWidget {
  final Map<String, dynamic> league;

  const LeagueDetailsPage({super.key, required this.league});

  @override
  Widget build(BuildContext context) {
    final isActive = league['status'] == 'active';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          league['name'],
          style: const TextStyle(fontFamily: 'Montserrat'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🏆 League Icon + Title
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(Icons.emoji_events_rounded, color: Colors.white, size: 36.sp),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    league['name'],
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),


            _InfoCard(
              icon: Icons.date_range,
              title: 'Dates',
              value: '${league['start_date']} → ${league['end_date']}',
            ),
            SizedBox(height: 16.h),


            _InfoCard(
              icon: Icons.attach_money,
              title: 'Price',
              value: '${league['price']} SAR',
            ),
            SizedBox(height: 16.h),


            _InfoCard(
              icon: Icons.military_tech_rounded,
              title: 'Prize',
              value: league['prize'],
            ),
            SizedBox(height: 16.h),


            _InfoCard(
              icon: Icons.flag_rounded,
              title: 'Status',
              value: isActive ? 'Active' : 'Finished',
              valueColor: isActive ? Colors.green : Colors.red,
            ),
            SizedBox(height: 16.h),

            _InfoCard(
              icon: Icons.sports_soccer_rounded,
              title: 'Created by',
              value: 'Al-Salam Stadium', // Placeholder name
            ),

            SizedBox(height: 30.h),

            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.check_circle_outline, color: Colors.white,),
                label: const Text('Join League', style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 14.h),
                  textStyle: TextStyle(fontSize: 16.sp, fontFamily: 'Montserrat'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color? valueColor;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.r),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Icon(icon, size: 24.sp, color: AppColors.primaryColor),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12.sp,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  value,
                  style: TextStyle(
                    fontFamily: 'Lora',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: valueColor ?? Colors.black87,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
