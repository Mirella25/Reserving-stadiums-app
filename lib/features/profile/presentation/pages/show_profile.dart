// lib/features/profile/presentation/pages/show_profile.dart (أو profile_page.dart)
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:reserving_stadiums_app/features/profile/domain/entities/profile_details_entity.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';

import '../../data/models/request/profile_update_request.dart';
import '../widgets/safe_avatar.dart';
// import '../../domain/usecases/profile_update_input.dart';

class ProfilePage extends StatefulWidget {
  final int profileId;
  final String storageBaseUrl;
  final bool canEdit;

  const ProfilePage({
    super.key,
    required this.profileId,
    required this.storageBaseUrl, required this.canEdit,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(LoadProfileDetails(widget.profileId));
  }

  @override
  Widget build(BuildContext context) {
    const Color iconColor = Color(0xFF4CAF50);

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state.errorMessage != null && !state.isLoading) {
            CustomSnackbar.show(context, message: state.errorMessage! ,isError: true);
          }
          if (state.isSuccess && !state.isLoading) {
            CustomSnackbar.show(context, message: "Profile Updated Successfully" ,isError: false);
          }
        },
        builder: (context, state) {
          if (state.isLoading && state.profileDetails == null) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.errorMessage != null && state.profileDetails == null) {
            return Center(
              child: ElevatedButton.icon(
                onPressed: () => context.read<ProfileBloc>().add(LoadProfileDetails(widget.profileId)),
                icon: const Icon(Icons.refresh),
                label: const Text('Retry'),
              ),
            );
          }
          final p = state.profileDetails;
          if (p == null) return const SizedBox.shrink();
          final initials = [
            (p.firstName ?? '').trim(),
            (p.lastName ?? '').trim(),
          ].where((s) => s.isNotEmpty).map((s) => s[0].toUpperCase()).join();
          final avatar = SafeAvatar(
            relativeOrFullUrl: p.avatar,             // ممكن تكون null أو "avatars/.."
            storageBaseUrl: widget.storageBaseUrl,   // مثلاً http://localhost:8000 أو من AppConstants
            radius: 50.r,
            fallbackText: initials.isEmpty ? '🙂' : initials,
          );
          return SingleChildScrollView(
            padding: EdgeInsets.all(16.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
// استعمله بدلاً من CircleAvatar:
              avatar,
              SizedBox(height: 12.h),
                Text(
                  '${_v(p.firstName)} ${_v(p.lastName)}',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  _v(p.address),
                  style: TextStyle(fontSize: 14.sp, color: Colors.grey[700], fontFamily: 'Lora'),
                ),
                SizedBox(height: 20.h),

                // Personal Info (أبقينا فقط الحقول المطلوبة)
                _buildSection(title: "Personal Info", children: [
                  _infoRowWithIcon(Icons.person, "Gender", _v(p.gender), iconColor),
                  _infoRowWithIcon(Icons.cake, "Birthdate", _v(p.birthdate), iconColor),
                  _infoRowWithIcon(Icons.phone, "Phone", _v(p.phoneNumber), iconColor),
                  // تم حذف: nationality, emergency contact
                ]),

                // Athletic Info (بدون previous teams / achievements)
                _buildSection(title: "Athletic Info", children: [
                  _infoRowWithIcon(Icons.height, "Height", p.height != null ? '${p.height} cm' : '—', iconColor),
                  _infoRowWithIcon(Icons.monitor_weight, "Weight", p.weight != null ? '${p.weight} kg' : '—', iconColor),
                  _infoRowWithIcon(Icons.sports_soccer, "Positions Played", _v(p.positionsPlayed), iconColor),
                  _infoRowWithIcon(Icons.healing, "Injuries", _v(p.injuries, fallback: 'None'), iconColor),
                  _infoRowWithIcon(Icons.timeline, "Experience", p.yearsOfExperience != null ? '${p.yearsOfExperience} years' : '—', iconColor),
                ]),

                // تم حذف: Notes, Previous Teams, Achievements, زر Refresh

                SizedBox(height: 20.h),
               if (widget.canEdit)
                 SizedBox(
                   width: double.infinity,

                   child:
                   ElevatedButton.icon(
                     onPressed: () => _openEditSheet(context, p),
                     icon: const Icon(Icons.edit, color: Colors.white),
                     label: const Text(
                         'Edit Profile', style: TextStyle(color: Colors.white)),
                     style: ElevatedButton.styleFrom(
                       backgroundColor: iconColor,
                       padding: EdgeInsets.symmetric(horizontal: 24.w,
                           vertical: 12.h),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius
                           .circular(12.r)),
                       textStyle: TextStyle(fontFamily: 'Poppins', fontSize: 14
                           .sp),
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

  // ===== Edit BottomSheet =====
  void _openEditSheet(BuildContext context, ProfileDetailsEntity p) {
    final addrCtrl = TextEditingController(text: p.address ?? '');
    final phoneCtrl = TextEditingController(text: p.phoneNumber ?? '');
    final heightCtrl = TextEditingController(text: p.height?.toString() ?? '');
    final weightCtrl = TextEditingController(text: p.weight?.toString() ?? '');
    final posCtrl   = TextEditingController(text: p.positionsPlayed ?? '');
    final injCtrl   = TextEditingController(text: p.injuries ?? '');
    final yrsCtrl   = TextEditingController(text: p.yearsOfExperience?.toString() ?? '');

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16.r))),
      builder: (_) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 16.h,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _sheetHandle(),
              SizedBox(height: 12.h),
              _tf(addrCtrl, 'Address'),
              SizedBox(height: 10.h),
              _tf(phoneCtrl, 'Phone'),
              SizedBox(height: 10.h),
              _tf(heightCtrl, 'Height (cm)', keyboard: TextInputType.number),
              SizedBox(height: 10.h),
              _tf(weightCtrl, 'Weight (kg)', keyboard: TextInputType.number),
              SizedBox(height: 10.h),
              _tf(posCtrl, 'Positions Played'),
              SizedBox(height: 10.h),
              _tf(injCtrl, 'Injuries'),
              SizedBox(height: 10.h),
              _tf(yrsCtrl, 'Years of Experience', keyboard: TextInputType.number),
              SizedBox(height: 16.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {

                      final req = ProfileUpdateRequest(
                        address: _nz(addrCtrl.text),
                        phoneNumber: _nz(phoneCtrl.text),
                        height: int.tryParse(heightCtrl.text.trim()),
                        weight: int.tryParse(weightCtrl.text.trim()),
                        positionsPlayed: _nz(posCtrl.text),
                        injuries: _nz(injCtrl.text),
                        yearsOfExperience: int.tryParse(yrsCtrl.text.trim()),
                      );

                      context.read<ProfileBloc>().add(
                        UpdateProfileSubmitted(id: p.id!, req: req),
                      );

                      Navigator.pop(context);
                    },


                  icon: const Icon(Icons.save, color: Colors.white),
                  label: const Text('Save', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _sheetHandle() => Container(
    width: 60.w,
    height: 5.h,
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(100),
    ),
  );

  Widget _tf(TextEditingController c, String hint, {TextInputType? keyboard}) {
    return TextField(
      controller: c,
      keyboardType: keyboard,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFF4CAF50)),
        ),
      ),
    );
  }

  // ===== Helpers =====
  String _v(String? s, {String fallback = '—'}) {
    if (s == null || s.toString().trim().isEmpty) return fallback;
    return s;
  }
  String? _nz(String? s) {
    if (s == null) return null;
    final v = s.trim();
    return v.isEmpty ? null : v;
  }

  // show_profile.dart
  ImageProvider? _avatarProvider(String base, String? rel) {
    if (rel == null || rel.isEmpty) return null;
    return NetworkImage(rel.startsWith('http') ? rel : '$base/storage/$rel');
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
          Text(title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                color: Colors.black87,
              )),
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
        children: [
          Icon(icon, size: 19.sp, color: iconColor),
          SizedBox(width: 8.w),
          Expanded(
            flex: 2,
            child: Text(
              "$label:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(value, style: TextStyle(fontSize: 14.sp, fontFamily: 'Lora')),
          ),
        ],
      ),
    );
  }
}
