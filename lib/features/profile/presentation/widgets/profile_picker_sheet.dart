// lib/features/profile/presentation/picker/profile_picker_sheet.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/dependency_injection/injections.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../auth/data/datasources/auth_local_datasource.dart';
import '../../domain/usecases/get_all_profile_usecase.dart';
import '../../domain/entities/profile_brief_entity.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import '../../../profile/presentation/pages/show_profile.dart';
import 'package:reserving_stadiums_app/core/result/result.dart' as r;

Future<int?> showProfilePickerSheet(BuildContext context) {
  return showModalBottomSheet<int>(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
    builder: (ctx) => const _ProfilePickerBody(),
  );
}

class _ProfilePickerBody extends StatefulWidget {
  const _ProfilePickerBody({super.key});
  @override
  State<_ProfilePickerBody> createState() => _ProfilePickerBodyState();
}

class _ProfilePickerBodyState extends State<_ProfilePickerBody> {
  bool loading = true;
  String? error;
  List<ProfileBriefEntity> items = [];
  List<ProfileBriefEntity> filtered = [];
  int? selectedUserId;
  int? myUserId;
  final _searchCtrl = TextEditingController();

  late final String storageBaseUrl;

  @override
  void initState() {
    super.initState();
    storageBaseUrl = AppConstants.baseUrl.replaceFirst(RegExp(r'/api/?$'), '');
    _load();
    _searchCtrl.addListener(_applyFilter);
  }

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    final uid = await getIt<AuthLocalDataSource>().getCachedUserId();
    setState(() => myUserId = uid);

    final uc = getIt<GetAllProfilesUsecase>();
    final res = await uc(page: 1, perPage: 60);

    setState(() {
      loading = false;
      if (res is r.Success<List<ProfileBriefEntity>>) {
        // استثناء بروفايلي من القائمة
        items = res.data.where((p) => p.userId != uid).toList();
        filtered = items;
      } else if (res is r.ConnectionError<List<ProfileBriefEntity>>) {
        error = 'Connection error';
      } else if (res is r.Error<List<ProfileBriefEntity>>) {
        error = res.e?.toString() ?? 'Error';
      } else {
        error = 'Unexpected result';
      }
    });
  }

  void _applyFilter() {
    final q = _searchCtrl.text.trim().toLowerCase();
    setState(() {
      filtered = q.isEmpty
          ? items
          : items.where((p) => p.fullName.toLowerCase().contains(q)).toList();
    });
  }

  String? _buildAvatarUrl(String? path) {
    if (path == null || path.isEmpty) return null;
    if (path.startsWith('http')) return path;
    return '$storageBaseUrl/storage/$path';
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.92, // ✅ الشيت ياخد ~92% من الشاشة بشكل مرن
      child: AnimatedPadding(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOut,
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          top: 12.h,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16.h, // ✅ يراعي الكيبورد
        ),
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // handle
              Container(
                width: 48.w,
                height: 5.h,
                margin: EdgeInsets.only(bottom: 12.h),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(3.r),
                ),
              ),

              // Title
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Select a profile',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Montserrat',
                    color: AppColors.textColor,
                  ),
                ),
              ),
              SizedBox(height: 10.h),

              // Search
              TextField(
                controller: _searchCtrl,
                style: TextStyle(fontFamily: 'Lora', fontSize: 14.sp),
                decoration: InputDecoration(
                  hintText: 'Search by name…',
                  hintStyle: TextStyle(fontFamily: 'Lora', fontSize: 13.sp, color: Colors.grey[600]),
                  prefixIcon: const Icon(Icons.search),
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: AppColors.primaryColor),
                  ),
                ),
              ),
              SizedBox(height: 12.h),

              // ✅ بدل الـ SizedBox(height: 380.h) بـ Expanded
              Expanded(
                child: Builder(
                  builder: (_) {
                    if (loading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (error != null) {
                      return Center(
                        child: Text(
                          error!,
                          style: TextStyle(color: Colors.red, fontSize: 13.sp, fontFamily: 'Poppins'),
                        ),
                      );
                    }
                    if (filtered.isEmpty) {
                      return Center(
                        child: Text(
                          'No profiles found',
                          style: TextStyle(fontSize: 13.sp, fontFamily: 'Poppins'),
                        ),
                      );
                    }
                    return ListView.separated(
                      itemCount: filtered.length,
                      separatorBuilder: (_, __) => SizedBox(height: 8.h),
                      itemBuilder: (_, i) {
                        final p = filtered[i];
                        final selected = selectedUserId == p.userId;
                        final initials = p.fullName.isNotEmpty ? p.fullName[0].toUpperCase() : '?';
                        final avatarUrl = _buildAvatarUrl(p.avatarUrl);

                        return InkWell(
                          onTap: () => setState(() {
                            selectedUserId = (selectedUserId == p.userId) ? null : p.userId; // toggle
                          }),
                          borderRadius: BorderRadius.circular(12.r),
                          child: Container(
                            padding: EdgeInsets.all(10.r),
                            decoration: BoxDecoration(
                              color: selected ? AppColors.primaryColor.withOpacity(.06) : Colors.white,
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: selected ? AppColors.primaryColor : Colors.grey.shade300,
                                width: selected ? 1.4 : 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.04),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 22.r,
                                  backgroundColor: Colors.grey.shade200,
                                  backgroundImage: (avatarUrl != null) ? NetworkImage(avatarUrl) : null,
                                  child: (avatarUrl == null)
                                      ? Text(
                                    initials,
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins',
                                    ),
                                  )
                                      : null,
                                ),
                                SizedBox(width: 10.w),
                                Expanded(
                                  child: Text(
                                    p.fullName,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                TextButton.icon(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => BlocProvider<ProfileBloc>(
                                          create: (_) => getIt<ProfileBloc>(),
                                          child: ProfilePage(
                                            profileId: p.profileId,
                                            storageBaseUrl: storageBaseUrl,
                                            canEdit: false,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  icon: const Icon(Icons.person_search_rounded, color: AppColors.primaryColor),
                                  label: Text(
                                    'Show',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13.sp,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Icon(
                                  selected ? Icons.check_circle_rounded : Icons.radio_button_unchecked,
                                  color: selected ? AppColors.primaryColor : Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),

              SizedBox(height: 12.h),

              // Actions
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: AppColors.primaryColor, width: 1.2),
                        foregroundColor: AppColors.primaryColor,
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                      ),
                      child: Text(
                        'Cancel',
                        style: TextStyle(fontSize: 14.sp, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: selectedUserId == null
                          ? null
                          : () => Navigator.of(context).pop(selectedUserId),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        disabledBackgroundColor: Colors.grey.shade300,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                      ),
                      child: Text(
                        'Invite',
                        style: TextStyle(fontSize: 14.sp, fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
