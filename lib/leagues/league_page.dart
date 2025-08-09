import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_strings.dart';
import '../core/constants/app_colors.dart' as appcolor;
import 'leagues_details.dart'; // تأكد أنك عامل الصفحة

class LeaguesPage extends StatelessWidget {
  const LeaguesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> mockLeagues = [
      {
        "id": 2,
        "name": "Ramadan League",
        "start_date": "2025-07-28",
        "end_date": "2025-08-10",
        "price": "75.00",
        "prize": "Trophy + 500 SAR",
        "status": "finished",
      },
      {
        "id": 4,
        "name": "Champions Ramadan",
        "start_date": "2025-07-28",
        "end_date": "2025-08-10",
        "price": "200.00",
        "prize": "Trophy + 500 SAR",
        "status": "active",
      },
      {
        "id": 5,
        "name": "Champions",
        "start_date": "2025-07-28",
        "end_date": "2025-08-10",
        "price": "50.00",
        "prize": "Trophy + 500 SAR",
        "status": "active",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Leagues"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: ListView.separated(
          itemCount: mockLeagues.length,
          separatorBuilder: (_, __) => SizedBox(height: 16.h),
          itemBuilder: (context, index) {
            final league = mockLeagues[index];
            final isActive = league['status'] == 'active';

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LeagueDetailsPage(league: league),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.12),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  border: Border.all(
                    color: isActive ? Colors.green : Colors.red,
                    width: 1,
                  ),
                ),
                padding: EdgeInsets.all(16.r),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 28.r,
                      backgroundColor: appcolor.AppColors.primaryColor,
                      child: Icon(Icons.emoji_events_outlined, size: 28.sp, color: Colors.white),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            league['name'],
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 6.h),
                          Row(
                            children: [
                              const Icon(Icons.date_range, size: 16, color: Colors.black54),
                              SizedBox(width: 6.w),
                              Expanded(
                                child: Text(
                                  "${league['start_date']} - ${league['end_date']}",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.sp,
                                    color: Colors.black87,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            children: [
                              const Icon(Icons.price_change_outlined, size: 16, color: Colors.black54),
                              SizedBox(width: 6.w),
                              Expanded(
                                child: Text(
                                  "${league['price']} SAR",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.sp,
                                    color: Colors.black87,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            children: [
                              const Icon(Icons.military_tech_outlined, size: 18, color: Colors.amber),
                              SizedBox(width: 6.w),
                              Expanded(
                                child: Text(
                                  league['prize'],
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.sp,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: isActive ? Colors.green[100] : Colors.red[100],
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Text(
                            isActive ? "Active" : "Finished",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 11.sp,
                              color: isActive ? Colors.green[800] : Colors.red[800],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
