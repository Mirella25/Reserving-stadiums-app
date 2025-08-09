import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  final Map<String, dynamic> profile;

  const ProfilePage({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    final Color iconColor = const Color(0xFF4CAF50);

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.r,
              backgroundImage: NetworkImage(
                'https://yourdomain.com/storage/${profile['avatar']}',
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              '${profile['first_name']} ${profile['last_name']}',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              profile['address'] ?? '',
              style: TextStyle(fontSize: 14.sp, color: Colors.grey[700], fontFamily: 'Lora'),
            ),
            SizedBox(height: 20.h),

            _buildSection(title: "Personal Info", children: [
              _infoRowWithIcon(Icons.person, "Gender", profile['gender'], iconColor),
              _infoRowWithIcon(Icons.cake, "Birthdate", profile['birthdate'], iconColor),
              _infoRowWithIcon(Icons.flag, "Nationality", profile['nationality'] ?? '—', iconColor),
              _infoRowWithIcon(Icons.phone, "Phone", profile['phone_number'].toString(), iconColor),
              _infoRowWithIcon(Icons.warning_amber_rounded, "Emergency Contact", profile['emergency_contact_information'], iconColor),
            ]),

            _buildSection(title: "Athletic Info", children: [
              _infoRowWithIcon(Icons.height, "Height", "${profile['height']} cm", iconColor),
              _infoRowWithIcon(Icons.monitor_weight, "Weight", "${profile['weight']} kg", iconColor),
              _infoRowWithIcon(Icons.sports_soccer, "Positions Played", profile['positions_played'] ?? '—', iconColor),
              _infoRowWithIcon(Icons.healing, "Injuries", profile['injuries'] ?? 'None', iconColor),
              _infoRowWithIcon(Icons.timeline, "Experience", "${profile['years_of_experience']} years", iconColor),
              _infoRowWithIcon(Icons.group, "Previous Teams", profile['previous_teams'] ?? '—', iconColor),
              _infoRowWithIcon(Icons.star, "Achievements", profile['notable_achievements'] ?? '—', iconColor),
            ]),

            _buildSection(title: "Notes", children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.notes, size: 20.sp, color: iconColor),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      profile['extra_notes'] ?? '-',
                      style: TextStyle(fontSize: 14.sp, fontFamily: 'Lora'),
                    ),
                  ),
                ],
              )
            ]),

            SizedBox(height: 20.h),

            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.edit, color: Colors.white),
              label: const Text('Edit Profile',style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: iconColor,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                textStyle: TextStyle(fontFamily: 'Poppins', fontSize: 14.sp),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required List<Widget> children}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.all(14.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 10.h),
          ...children,
        ],
      ),
    );
  }

  Widget _infoRowWithIcon(IconData icon, String label, String value, Color iconColor) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18.sp, color: iconColor),
          SizedBox(width: 8.w),
          Expanded(
            flex: 2,
            child: Text(
              "$label:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: TextStyle(fontSize: 13.sp, fontFamily: 'Lora'),
            ),
          ),
        ],
      ),
    );
  }
}
