import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_bloc.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_event.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/usecases/stadium_owner/get_stadium_details.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/bloc/stadium_owner/view_stadium_details/view_stadium_details_bloc.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/bloc/stadium_owner/view_stadiums/view_stadiums_bloc.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/pages/stadium_owner/update_stadium_page.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/pages/stadium_owner/view_stadium_details_page.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/widgets/stadium_owner/stadiums_loading.dart';
import 'package:reserving_stadiums_app/shared/widgets/error_message.dart';
import 'package:reserving_stadiums_app/shared/widgets/loading.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';

class ViewStadiumsPage extends StatefulWidget {
  const ViewStadiumsPage({super.key});

  @override
  State<ViewStadiumsPage> createState() => _ViewStadiumsPageState();
}

class _ViewStadiumsPageState extends State<ViewStadiumsPage> {
  bool _isDeletingDialogShown = false;

  Future<void> _showConfirmDialog(
    BuildContext ctx,
    String name,
    String? location,
    int id,
  ) {
    return showDialog(
      context: ctx,
      builder: (dCtx) => AlertDialog(
        title: const Text(
          'Delete stadium',
          style: TextStyle(
            fontFamily: 'Lora',
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Are you sure you want to delete the stadium?",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            if (location != null && location.isNotEmpty) ...[
              const SizedBox(height: 6),
              Text(
                location,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ],
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dCtx).pop(),
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: AppColors.primaryColor,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
            ),
            onPressed: () {
              Navigator.of(dCtx).pop();
              ctx.read<ViewStadiumsBloc>().add(DeleteStadiumSubmitted(id: id));
            },
            child: const Text(
              'Delete',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _stadiumBlocListener(BuildContext context, ViewStadiumsState state) {
    if (!state.isDeleting && _isDeletingDialogShown) {
      _isDeletingDialogShown = false;

      if (mounted && Navigator.canPop(context)) {
        Navigator.of(context).pop();
      }
    }

    if (state.deleteSuccess == true) {
      if (mounted) {
        CustomSnackbar.show(context,
            message: 'Stadium deleted successfully!', isError: false);

        context.read<ViewStadiumsBloc>().add(LoadStadiumsEvent());
      }
    }
    if (!state.isGenerating && state.generateSuccess) {
      Future.microtask(() {
        if (mounted) {
          CustomSnackbar.show(context,
              message: state.generateSuccessMessage!, isError: false);
          context.read<ViewStadiumsBloc>().emit(
                state.copyWith(generateSuccess: false),
              );
        }
      });
    } else if (!state.isGenerating && state.errorMessage != null) {
      Future.microtask(() {
        if (mounted) {
          CustomSnackbar.show(context,
              message: state.errorMessage!, isError: true);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ViewStadiumsBloc, ViewStadiumsState>(
      listener: _stadiumBlocListener,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios, size: 24.r)),
                    Text(
                      "Stadiums",
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<ViewStadiumsBloc, ViewStadiumsState>(
                  builder: (context, state) {
                    if (state.isLoading || state.isGenerating) {
                      return const StadiumsLoading();
                    } else if (state.errorMessage != null &&
                        state.errorMessage != "You have no stadium improved.") {
                      return ErrorMessage(message: state.errorMessage!);
                    }

                    final list = state.stadiums;
                    if (list.isEmpty &&
                        state.errorMessage == "You have no stadium improved.") {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Lottie.asset(
                            'assets/lootie/Empty.json',
                            width: 300.w,
                            height: 300.h,
                            fit: BoxFit.contain,
                          ),
                          Text("No stadiums yet",
                              style: TextStyle(fontSize: 18.sp)),
                        ],
                      );
                    }

                    return AnimationLimiter(
                      child: GridView.builder(
                        padding: EdgeInsets.all(12.w),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12.w,
                          mainAxisSpacing: 12.h,
                          childAspectRatio: 0.85,
                        ),
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          final stadium = list[index];
                          return AnimationConfiguration.staggeredGrid(
                            position: index,
                            duration: const Duration(milliseconds: 500),
                            columnCount: 2,
                            child: ScaleAnimation(
                              child: FadeInAnimation(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => MultiBlocProvider(
                                          providers: [
                                            BlocProvider(
                                              create: (ctx) =>
                                                  ViewStadiumDetailsBloc(
                                                getIt<
                                                    GetStadiumOwnerDetailsUsecase>(),
                                              )..add(LoadStadiumDetailsEvent(
                                                      id: stadium.id!)),
                                            ),
                                            BlocProvider(
                                              create: (ctx) =>
                                                  getIt<SportBloc>()
                                                    ..add(LoadSportsEvent()),
                                            ),
                                          ],
                                          child: ViewStadiumDetailsPage(
                                            stadiumId: stadium.id!,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.r),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFFffffff),
                                          Color(0xFFF7F9FC),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 6,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          18.r)),
                                              child: (stadium.photos != null &&
                                                      stadium
                                                          .photos!.isNotEmpty)
                                                  ? Image.network(
                                                      stadium.photos!.first
                                                          .toString(),
                                                      height: 120.h,
                                                      width: double.infinity,
                                                      fit: BoxFit.cover,
                                                      errorBuilder:
                                                          (_, __, ___) =>
                                                              Container(
                                                        height: 120.h,
                                                        width: double.infinity,
                                                        color: Colors.grey[300],
                                                        child: Icon(
                                                            Icons.broken_image,
                                                            color: AppColors
                                                                .primaryColor,
                                                            size: 40.r),
                                                      ),
                                                    )
                                                  : Image.asset(
                                                      "assets/images/stadiums_background.jpg",
                                                      height: 120.h,
                                                      fit: BoxFit.cover,
                                                    ),
                                            ),
                                            Positioned(
                                              right: 6,
                                              top: 6,
                                              child: PopupMenuButton<String>(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                onSelected: (value) {
                                                  if (value == 'edit') {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            MultiBlocProvider(
                                                          providers: [
                                                            BlocProvider(
                                                              create: (ctx) =>
                                                                  ViewStadiumDetailsBloc(
                                                                getIt<
                                                                    GetStadiumOwnerDetailsUsecase>(),
                                                              )..add(LoadStadiumDetailsEvent(
                                                                      id: stadium
                                                                          .id!)),
                                                            ),
                                                            BlocProvider(
                                                              create: (ctx) => getIt<
                                                                  SportBloc>()
                                                                ..add(
                                                                    LoadSportsEvent()),
                                                            ),
                                                          ],
                                                          child:
                                                              UpdateStadiumPage(
                                                                  stadiumId:
                                                                      stadium
                                                                          .id!),
                                                        ),
                                                      ),
                                                    );
                                                  } else if (value ==
                                                      'delete') {
                                                    _showConfirmDialog(
                                                      context,
                                                      stadium.name,
                                                      stadium.location,
                                                      stadium.id!,
                                                    );
                                                  } else if (value == 'slots') {
                                                    context
                                                        .read<
                                                            ViewStadiumsBloc>()
                                                        .add(
                                                          GenerateStadiumSlotsSubmitted(
                                                              id: stadium.id!),
                                                        );
                                                  }
                                                },
                                                itemBuilder: (context) => [
                                                  const PopupMenuItem(
                                                    value: 'slots',
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .timelapse_outlined,
                                                            color: AppColors
                                                                .primaryColor),
                                                        SizedBox(width: 8),
                                                        Text(
                                                          "Split time",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Montserrat'),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const PopupMenuItem(
                                                    value: 'edit',
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.edit,
                                                            color: AppColors
                                                                .primaryColor),
                                                        SizedBox(width: 8),
                                                        Text(
                                                          "Edit",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Montserrat'),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const PopupMenuItem(
                                                    value: 'delete',
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.delete,
                                                            color: Colors.red),
                                                        SizedBox(width: 8),
                                                        Text("Delete",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Montserrat')),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                                child: const Icon(
                                                  Icons.more_vert,
                                                  color: AppColors.primaryColor,
                                                  shadows: [
                                                    Shadow(
                                                        color: Colors.black54,
                                                        blurRadius: 6)
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10.w),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                stadium.name,
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontFamily: 'Lora',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 6.h),
                                              Row(
                                                children: [
                                                  Icon(Icons.location_on,
                                                      color: Colors.red,
                                                      size: 18.r),
                                                  SizedBox(width: 4.w),
                                                  Expanded(
                                                    child: Text(
                                                      stadium.location,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                        fontFamily: 'Lora',
                                                        fontSize: 13.sp,
                                                        color: Colors.grey[600],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
