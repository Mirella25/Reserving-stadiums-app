import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_strings.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/features/facility/presentation/bloc/stadium_owner/view_facility_details/view_facility_details_bloc.dart';
import 'package:reserving_stadiums_app/features/facility/presentation/pages/stadium_owner/add_facility_page.dart';
import 'package:reserving_stadiums_app/features/facility/presentation/pages/stadium_owner/update_facility_page.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_bloc.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_event.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_state.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/bloc/stadium_owner/view_stadium_details/view_stadium_details_bloc.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/widgets/stadium_owner/carousel_slider.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/widgets/stadium_owner/stadium_details_bottom_bar.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/widgets/stadium_owner/stadium_details_loading.dart';
import 'package:reserving_stadiums_app/shared/widgets/error_message.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';
import 'package:reserving_stadiums_app/features/facility/presentation/bloc/stadium_owner/view_stadium_facilities/view_stadium_facilities_bloc.dart';

class ViewStadiumDetailsPage extends StatefulWidget {
  final int stadiumId;
  const ViewStadiumDetailsPage({super.key, required this.stadiumId});

  @override
  State<ViewStadiumDetailsPage> createState() => _ViewStadiumDetailsPageState();
}

class _ViewStadiumDetailsPageState extends State<ViewStadiumDetailsPage> {
  List<String> imagesFallback = [
    "assets/images/stadiums_background.jpg",
  ];

  bool _isDeletingDialogShown = false;

  @override
  void initState() {
    super.initState();

    try {
      final sportState = context.read<SportBloc>().state;
      if (sportState is! SportLoaded && sportState is! SportLoading) {
        context.read<SportBloc>().add(LoadSportsEvent());
      }
    } catch (_) {}
  }

  Future<void> _showDeleteFacilityDialog(
      BuildContext context, int facilityId) async {
    return showDialog(
      context: context,
      builder: (dialogCtx) {
        return AlertDialog(
          title: const Text('Delete Facility'),
          content: const Text('Are you sure you want to delete this facility?'),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(dialogCtx, rootNavigator: true).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(dialogCtx, rootNavigator: true).pop();
                context.read<ViewStadiumFacilitiesBloc>().add(
                      DeleteFacilitySubmitted(
                        id: facilityId,
                        stadiumId: widget.stadiumId,
                      ),
                    );
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _facilitiesBlocListener(
      BuildContext context, ViewStadiumFacilitiesState state) {
    if (!state.isDeleting && _isDeletingDialogShown) {
      _isDeletingDialogShown = false;
      if (Navigator.of(context, rootNavigator: true).canPop()) {
        Navigator.of(context, rootNavigator: true).pop();
      }
    }

    if (state.deleteSuccess) {
      CustomSnackbar.show(context,
          message: 'Facility deleted successfully!', isError: false);

      context.read<ViewStadiumFacilitiesBloc>().add(
            LoadStadiumFacilitiesEvent(id: widget.stadiumId),
          );
    }

    if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
      CustomSnackbar.show(context, message: state.errorMessage!, isError: true);
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<ViewStadiumDetailsBloc>()
            ..add(LoadStadiumDetailsEvent(id: widget.stadiumId)),
        ),
        BlocProvider(
          create: (_) => getIt<ViewStadiumFacilitiesBloc>()
            ..add(LoadStadiumFacilitiesEvent(id: widget.stadiumId)),
        ),
        BlocProvider(
          create: (_) => getIt<SportBloc>()..add(LoadSportsEvent()),
        ),
      ],
      child:
          BlocListener<ViewStadiumFacilitiesBloc, ViewStadiumFacilitiesState>(
        listener: _facilitiesBlocListener,
        child: Scaffold(
          bottomNavigationBar: const StadiumDetailsBottomBar(),
          body: SafeArea(
            child: BlocBuilder<ViewStadiumDetailsBloc, ViewStadiumDetailsState>(
              builder: (context, state) {
                if (state.isLoading) return const DetailsShimmer();
                if (state.errorMessage != null &&
                    state.errorMessage!.isNotEmpty) {
                  return ErrorMessage(message: state.errorMessage!);
                }

                final StadiumEntity? stadium = state.stadium;
                final photosToShow =
                    (stadium?.photos != null && stadium!.photos!.isNotEmpty)
                        ? stadium.photos!.map((e) => e.toString()).toList()
                        : imagesFallback;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSliderWidget(
                        photosToShow: photosToShow.cast<String>().toList()),
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
                              SizedBox(height: 10.h),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  const Icon(Icons.location_on,
                                      color: Colors.red),
                                  SizedBox(width: 4.w),
                                  Expanded(
                                    child: Text(
                                      stadium?.location ?? 'Unknown location',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.grey[600],
                                          fontFamily: 'Lora'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  const Icon(Icons.sports, color: Colors.grey),
                                  SizedBox(width: 4.w),
                                  BlocBuilder<SportBloc, SportState>(
                                    builder: (context, sportState) {
                                      if (stadium?.sportId == null) {
                                        return Text('Unknown sport',
                                            style: TextStyle(
                                                color: Colors.grey[600]));
                                      }
                                      if (sportState is SportLoaded) {
                                        final match =
                                            sportState.sports.firstWhere(
                                          (s) => s.id == stadium!.sportId,
                                        );
                                        return Text(
                                            match?.name ?? 'Unknown sport',
                                            style: TextStyle(
                                                color: Colors.grey[600]));
                                      } else if (sportState is SportLoading) {
                                        return Text('Loading sport...',
                                            style: TextStyle(
                                                color: Colors.grey[600]));
                                      } else {
                                        return Text('Unknown sport',
                                            style: TextStyle(
                                                color: Colors.grey[600]));
                                      }
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  const Icon(Icons.timer, color: Colors.grey),
                                  SizedBox(width: 4.w),
                                  Text(
                                    '${stadium?.startTime ?? '--'} - ${stadium?.endTime ?? '--'}',
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontFamily: 'Lora'),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  const Icon(Icons.phone, color: Colors.grey),
                                  SizedBox(width: 4.w),
                                  Text(
                                    stadium?.ownerNumber.toString() ?? '--',
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontFamily: 'Lora'),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  const Icon(Icons.height, color: Colors.grey),
                                  SizedBox(width: 4.w),
                                  Text('${stadium?.length ?? '--'} cm',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontFamily: 'Lora')),
                                  SizedBox(width: 20.w),
                                  const Icon(Icons.width_full,
                                      color: Colors.grey),
                                  SizedBox(width: 4.w),
                                  Text('${stadium?.width ?? '--'} cm',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontFamily: 'Lora')),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Text('Description',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp)),
                              Padding(
                                padding: EdgeInsets.all(5.w),
                                child: Text(
                                  stadium?.description ?? '-',
                                  style: TextStyle(
                                      fontSize: 17.sp,
                                      color: Colors.grey[600],
                                      fontFamily: 'Lora'),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 16.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Facilities",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20.sp,
                                          fontFamily: 'Montserrat')),
                                  TextButton.icon(
                                    onPressed: () async {
                                      final res = await Navigator.push<bool?>(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CreateFacilityPage(
                                                    stadiumId: stadium?.id)),
                                      );
                                      if (res == true) {
                                        context
                                            .read<ViewStadiumFacilitiesBloc>()
                                            .add(LoadStadiumFacilitiesEvent(
                                                id: widget.stadiumId));
                                      }
                                    },
                                    icon: const Icon(Icons.add,
                                        color: AppColors.primaryColor),
                                    label: const Text('Add',
                                        style: TextStyle(
                                            color: AppColors.primaryColor,
                                            fontFamily: 'Lora')),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              BlocBuilder<ViewStadiumFacilitiesBloc,
                                  ViewStadiumFacilitiesState>(
                                builder: (context, facState) {
                                  if (facState.isLoading) {
                                    return SizedBox(
                                      height: 56.h,
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 6,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(width: 8.w),
                                        itemBuilder: (context, index) {
                                          return Container(
                                            width: 110.w,
                                            height: 40.h,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  }

                                  if (facState.errorMessage != null &&
                                      facState.errorMessage!.isNotEmpty) {
                                    return ErrorMessage(
                                        message: facState.errorMessage!);
                                  }

                                  final facilities = facState.facilities;

                                  if (facilities.isEmpty) {
                                    return Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 16.h, horizontal: 12.w),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade100,
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Column(
                                        children: [
                                          const Icon(Icons.info_outline,
                                              size: 36, color: Colors.grey),
                                          SizedBox(height: 8.h),
                                          const Text('No facilities yet'),
                                        ],
                                      ),
                                    );
                                  }

                                  return SizedBox(
                                    height: 56.h,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: facilities.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(width: 8.w),
                                      itemBuilder: (context, idx) {
                                        final f = facilities[idx];
                                        return BlocProvider(
                                            create: (_) =>
                                                getIt<ViewFacilityDetailsBloc>()
                                                  ..add(
                                                      LoadFacilityDetailsEvent(
                                                          id: f.id!)),
                                            child: BlocBuilder<
                                                ViewFacilityDetailsBloc,
                                                ViewFacilityDetailsState>(
                                              builder: (context, state) {
                                                return InkWell(
                                                  onTap: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (dcontext) {
                                                        final facility =
                                                            state.facility;

                                                        final rawFirst =
                                                            (facility?.photos !=
                                                                        null &&
                                                                    facility!
                                                                        .photos!
                                                                        .isNotEmpty)
                                                                ? facility
                                                                    .photos!
                                                                    .first
                                                                : null;
                                                        final firstPhoto =
                                                            rawFirst == null
                                                                ? ''
                                                                : rawFirst
                                                                    .toString()
                                                                    .trim();
                                                        final hasPhoto = firstPhoto
                                                                .isNotEmpty &&
                                                            firstPhoto
                                                                    .toLowerCase() !=
                                                                'null';

                                                        final imageWidget =
                                                            hasPhoto
                                                                ? SizedBox(
                                                                    width: double
                                                                        .maxFinite,
                                                                    height:
                                                                        180.h,
                                                                    child:
                                                                        _netImage(
                                                                      _fullUrl(
                                                                          firstPhoto),
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          180.h,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  )
                                                                : Container(
                                                                    width: double
                                                                        .maxFinite,
                                                                    height:
                                                                        180.h,
                                                                    color: Colors
                                                                            .grey[
                                                                        200],
                                                                    child: Icon(
                                                                        Icons
                                                                            .photo,
                                                                        size: 56
                                                                            .r,
                                                                        color: Colors
                                                                            .grey[500]),
                                                                  );

                                                        return AlertDialog(
                                                          title: Text(
                                                              facility?.name ??
                                                                  'Facility'),
                                                          content: facility ==
                                                                  null
                                                              ? const SizedBox(
                                                                  height: 60,
                                                                  child: Center(
                                                                      child:
                                                                          CircularProgressIndicator()),
                                                                )
                                                              : Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                      child:
                                                                          imageWidget,
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                            8.h),
                                                                    Text(
                                                                        'Quantity: ${facility.quantity ?? '-'}'),
                                                                  ],
                                                                ),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        dcontext)
                                                                    .pop();
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder: (_) =>
                                                                        UpdateFacilityPage(
                                                                      stadiumId:
                                                                          facility!
                                                                              .stadiumId,
                                                                      facilityId:
                                                                          facility
                                                                              .id!,
                                                                      name: facility
                                                                          .name,
                                                                      quantity:
                                                                          facility
                                                                              .quantity,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                              child: const Text(
                                                                  'Update'),
                                                            ),
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.of(
                                                                          dcontext)
                                                                      .pop(),
                                                              child: const Text(
                                                                  'Close'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: Chip(
                                                    backgroundColor:
                                                        Colors.grey.shade100,
                                                    labelPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 8.w,
                                                            vertical: 6.h),
                                                    label: Text(
                                                        f.name ?? 'Unknown',
                                                        style: TextStyle(
                                                            fontSize: 13.sp)),
                                                    deleteIcon: const Icon(
                                                        Icons.cancel),
                                                    onDeleted: () =>
                                                        _showDeleteFacilityDialog(
                                                            context, f.id!),
                                                  ),
                                                );
                                              },
                                            ));
                                      },
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 16.h),
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
      ),
    );
  }
}
