import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_strings.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_bloc.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_event.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_state.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/bloc/stadium_owner/view_request_details/view_request_details_bloc.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/widgets/stadium_owner/carousel_slider.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/widgets/stadium_owner/stadium_details_loading.dart';
import 'package:reserving_stadiums_app/shared/widgets/error_message.dart';

class ViewStadiumRequestDetails extends StatefulWidget {
  final int requestId;
  const ViewStadiumRequestDetails({super.key, required this.requestId});

  @override
  State<ViewStadiumRequestDetails> createState() =>
      _ViewStadiumRequestDetailsState();
}

class _ViewStadiumRequestDetailsState extends State<ViewStadiumRequestDetails> {
  List<String> imagesFallback = [
    "assets/images/stadiums_background.jpg",
  ];
  @override
  void initState() {
    super.initState();

    final sportState = context.read<SportBloc>().state;
    if (sportState is! SportLoaded && sportState is! SportLoading) {
      context.read<SportBloc>().add(LoadSportsEvent());
    }
  }

  String _fullUrl(String path) {
    final base = AppConstants.mediaBaseUrl;
    if (path.isEmpty) return base;
    final hasTrail = base.endsWith('/');
    final hasLead = path.startsWith('/');
    if (hasTrail && hasLead) return base + path.substring(1);
    if (!hasTrail && !hasLead) return '$base/$path';
    return base + path;
  }

  Widget _netImage(
    String url, {
    double? width,
    double? height,
    BoxFit fit = BoxFit.cover,
  }) {
    return Image.network(
      url,
      width: width,
      height: height,
      fit: fit,
      loadingBuilder: (c, w, progress) {
        if (progress == null) return w;
        return const Center(child: CircularProgressIndicator(strokeWidth: 2));
      },
      errorBuilder: (c, e, s) {
        print(e);
        return Icon(
          Icons.photo,
          color: AppColors.primaryColor,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ViewStadiumRequestDetailsBloc>()
        ..add(LoadStadiumRequestDetailsEvent(id: widget.requestId)),
      child: Scaffold(
        bottomNavigationBar: BlocBuilder<ViewStadiumRequestDetailsBloc,
            ViewStadiumRequestDetailsState>(
          builder: (context, state) {
            final raw = state.stadium?.statusRequest as String?;
            final key = raw?.trim().toLowerCase() ?? 'unknown';

            final synonyms = {
              'pending_approval': 'pending',
              'waiting': 'pending',
              'accepted': 'approved',
              'declined': 'rejected',
              'in_progress': 'pending',
            };
            final statusKey = synonyms[key] ?? key;

            // ترجمة وحالة لونية
            final locale = Localizations.localeOf(context).languageCode;
            final labels = {
              'pending': locale == 'ar' ? 'قيد الانتظار' : 'Pending',
              'approved': locale == 'ar' ? 'موافق عليه' : 'Approved',
              'rejected': locale == 'ar' ? 'مرفوض' : 'Rejected',
              'unknown': locale == 'ar' ? '---' : '---',
            };
            final colors = {
              'pending': Colors.orange,
              'approved': Colors.green,
              'rejected': Colors.red,
              'unknown': Colors.grey,
            };

            final label = labels[statusKey] ?? statusKey;
            final color = colors[statusKey] ?? Colors.grey;

            return Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
              ),
              height: 90.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info_outline, color: Colors.grey[600]),
                      SizedBox(width: 8.w),
                      Text(locale == 'ar' ? 'حالة الطلب' : 'Request status',
                          style: TextStyle(
                              fontSize: 14.sp, color: Colors.grey[700])),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Chip(
                        backgroundColor: color.withOpacity(0.12),
                        label: Text(label,
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp)),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
        body: SafeArea(
          child: BlocBuilder<ViewStadiumRequestDetailsBloc,
              ViewStadiumRequestDetailsState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const DetailsShimmer();
              }

              if (state.errorMessage != null &&
                  state.errorMessage!.isNotEmpty) {
                return ErrorMessage(message: state.errorMessage!);
              }

              final StadiumEntity? stadium = state.stadium;

              final List<dynamic> photosToShow =
                  (stadium?.photos != null && stadium!.photos!.isNotEmpty)
                      ? stadium.photos!.map((e) => e.toString()).toList()
                      : imagesFallback;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSliderWidget(
                    photosToShow: photosToShow,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(8.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h),
                            Text(stadium?.name ?? 'Stadium name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.sp,
                                    fontFamily: 'Poppins')),
                            Row(
                              children: [
                                const Expanded(
                                  flex: 1,
                                  child: Icon(Icons.location_on,
                                      color: Colors.red),
                                ),
                                SizedBox(width: 4.w),
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    stadium?.location ?? 'stadium location',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontFamily: 'Lora',
                                        fontSize: 14.sp,
                                        color: Colors.grey[600]),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Icon(Icons.sports_basketball_rounded,
                                    color: Colors.grey[600]),
                                SizedBox(width: 6.w),
                                BlocBuilder<SportBloc, SportState>(
                                  builder: (context, sportState) {
                                    final sportId = stadium?.sportId;
                                    if (sportId == null) {
                                      return Text('Unknown sport',
                                          style: TextStyle(
                                              fontFamily: 'Lora',
                                              color: Colors.grey[600]));
                                    }

                                    if (sportState is SportLoaded) {
                                      final matches = sportState.sports
                                          .where((s) => s.id == sportId);
                                      final match = matches.isNotEmpty
                                          ? matches.first
                                          : null;
                                      final name =
                                          match?.name ?? 'Unknown sport';
                                      return Text(name,
                                          style: TextStyle(
                                              fontFamily: 'Lora',
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w500));
                                    } else if (sportState is SportLoading) {
                                      return Text('Loading sport...',
                                          style: TextStyle(
                                              fontFamily: 'Lora',
                                              color: Colors.grey[600]));
                                    } else {
                                      return Text('Unknown sport',
                                          style: TextStyle(
                                              fontFamily: 'Lora',
                                              color: Colors.grey[600]));
                                    }
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Icon(Icons.timer, color: Colors.grey[600]),
                                SizedBox(width: 4.w),
                                Text(
                                    '${stadium?.startTime ?? '--'} - ${stadium?.endTime ?? '--'}',
                                    style: TextStyle(
                                        fontFamily: 'Lora',
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Icon(Icons.phone, color: Colors.grey[600]),
                                SizedBox(width: 4.w),
                                Text('${stadium?.ownerNumber ?? '--'}',
                                    style: TextStyle(
                                        fontFamily: 'Lora',
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Icon(Icons.height, color: Colors.grey[600]),
                                SizedBox(width: 4.w),
                                Text('${stadium?.length ?? '--'}(cm)',
                                    style: TextStyle(
                                        fontFamily: 'Lora',
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w500)),
                                SizedBox(width: 50.w),
                                Icon(Icons.width_full, color: Colors.grey[600]),
                                SizedBox(width: 4.w),
                                Text('${stadium?.width ?? '--'}(cm)',
                                    style: TextStyle(
                                        fontFamily: 'Lora',
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            stadium?.adminNotes != null
                                ? Row(
                                    children: [
                                      Icon(Icons.notes,
                                          color: Colors.grey[600]),
                                      SizedBox(width: 4.w),
                                      Text('${stadium?.adminNotes ?? ''}',
                                          maxLines: 2,
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontFamily: 'Lora',
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  )
                                : SizedBox(),
                            SizedBox(height: 10.h),
                            Text('Description',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.sp,
                                    fontFamily: 'Montserrat')),
                            Padding(
                              padding: EdgeInsets.all(5.w),
                              child: Text(
                                stadium?.description ?? '-',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Colors.grey[600],
                                    fontFamily: 'Lora',
                                    overflow: TextOverflow.ellipsis),
                                maxLines: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
