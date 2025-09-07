import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_bloc.dart';
import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_event.dart';
import 'package:reserving_stadiums_app/features/stadiums/domain/usecases/stadium_owner/get_stadium_request_details_usecase.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/bloc/stadium_owner/add_stadium/stadium_bloc.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/bloc/stadium_owner/view_request_details/view_request_details_bloc.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/pages/stadium_owner/view_stadium_request_details.dart';
import 'package:reserving_stadiums_app/shared/widgets/error_message.dart';
import 'package:reserving_stadiums_app/shared/widgets/snackbar.dart';

import '../../bloc/stadium_owner/view_stadium_requests/stadium_requests_bloc.dart';
import '../../widgets/stadium_owner/stadium_request_loading.dart';

enum RequestStatus { pending, approved, rejected }

class StadiumRequest {
  final String name;
  final String location;
  final RequestStatus status;
  StadiumRequest({
    required this.name,
    required this.location,
    required this.status,
  });
}

class ViewStadiumRequestsPage extends StatefulWidget {
  const ViewStadiumRequestsPage({
    super.key,
  });

  @override
  State<ViewStadiumRequestsPage> createState() =>
      _ViewStadiumRequestsPageState();
}

class _ViewStadiumRequestsPageState extends State<ViewStadiumRequestsPage> {
  bool _isDeletingDialogShown = false;
  @override
  void initState() {
    super.initState();
    context.read<StadiumRequestsBloc>().add(LoadStadiumRequestsEvent());
  }

  Color _statusBackgroundColor(RequestStatus s) {
    switch (s) {
      case RequestStatus.approved:
        return Colors.green.shade100;
      case RequestStatus.rejected:
        return Colors.red.shade100;
      case RequestStatus.pending:
        return Colors.orange.shade100;
    }
  }

  IconData _statusIcon(RequestStatus s) {
    switch (s) {
      case RequestStatus.approved:
        return Icons.check_circle;
      case RequestStatus.rejected:
        return Icons.cancel;
      case RequestStatus.pending:
        return Icons.hourglass_empty;
    }
  }

  Color _statusTextColor(RequestStatus s) {
    switch (s) {
      case RequestStatus.approved:
        return Colors.green.shade700;
      case RequestStatus.rejected:
        return Colors.red.shade700;
      case RequestStatus.pending:
        return Colors.orange.shade700;
    }
  }

  void _stadiumBlocListener(BuildContext context, StadiumState state) {
    if (state.isDeleting && !_isDeletingDialogShown) {
      _isDeletingDialogShown = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) =>
            const Center(child: CircularProgressIndicator(strokeWidth: 2)),
      );
      return;
    }

    if (!state.isDeleting && _isDeletingDialogShown) {
      _isDeletingDialogShown = false;

      if (mounted && Navigator.canPop(context)) {
        Navigator.of(context).pop();
      }
    }

    if (state.deleteSuccess == true) {
      if (mounted) {
        CustomSnackbar.show(context,
            message: 'Request deleted successfully!', isError: false);

        context.read<StadiumRequestsBloc>().add(LoadStadiumRequestsEvent());
      }
    }

    // if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
    //   if (mounted) {
    //     CustomSnackbar.show(context,
    //         message: state.errorMessage!, isError: true);
    //     context.read<StadiumRequestsBloc>().add(LoadStadiumRequestsEvent());
    //   }
    // }
  }

  Future<bool?> _showConfirmDialog(
      BuildContext ctx, String name, String? location) {
    return showDialog<bool>(
      context: ctx,
      builder: (dCtx) => AlertDialog(
        title: const Text(
          'Delete request',
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
              'هل أنت متأكد أنك تريد حذف هذا الطلب؟',
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
            onPressed: () => Navigator.of(dCtx).pop(false),
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
            onPressed: () => Navigator.of(dCtx).pop(true),
            child: const Text('Delete',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<StadiumBloc, StadiumState>(
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios, size: 24.r)),
                    Text(
                      "Stadium requests",
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontFamily: 'Poppins',
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<StadiumRequestsBloc, StadiumRequestsState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const StadiumRequestsLoading();
                    } else if (state.errorMessage != null &&
                        state.errorMessage != "You have no asks submitted.") {
                      return ErrorMessage(message: state.errorMessage!);
                    }
                    final list = state.requests ?? [];
                    if (list.isEmpty) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Lottie.asset(
                              'assets/lootie/Empty.json',
                              width: 300.w,
                              height: 300.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            'لا توجد طلبات حالياً',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ],
                      );
                    }
                    return AnimationLimiter(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          final req = list[index];
                          RequestStatus status;
                          switch (req.statusRequest?.toLowerCase()) {
                            case 'approved':
                              status = RequestStatus.approved;
                              break;

                            case 'rejected':
                              status = RequestStatus.rejected;
                              break;

                            case 'pending':
                            default:
                              status = RequestStatus.pending;
                          }
                          return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 500),
                            child: SlideAnimation(
                              verticalOffset: 50,
                              child: FadeInAnimation(
                                child: Dismissible(
                                  key: ValueKey(req.id),
                                  direction: DismissDirection.endToStart,
                                  confirmDismiss: (direction) async {
                                    final confirmed = await _showConfirmDialog(
                                        context, req.name, req.location);
                                    if (confirmed != true) return false;

                                    context.read<StadiumBloc>().add(
                                        DeleteStadiumRequestSubmitted(
                                            id: req.id!));

                                    return false;
                                  },
                                  background: Container(
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: const Icon(Icons.delete,
                                        color: Colors.white),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => MultiBlocProvider(
                                            providers: [
                                              BlocProvider(
                                                create: (ctx) =>
                                                    ViewStadiumRequestDetailsBloc(
                                                        getIt<
                                                            GetStadiumRequestDetailsUsecase>())
                                                      ..add(
                                                          LoadStadiumRequestDetailsEvent(
                                                              id: req.id!)),
                                              ),
                                              BlocProvider(
                                                create: (ctx) =>
                                                    getIt<SportBloc>()
                                                      ..add(LoadSportsEvent()),
                                              ),
                                            ],
                                            child: ViewStadiumRequestDetails(
                                              requestId: req.id!,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      shadowColor:
                                          _statusBackgroundColor(status),
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      elevation: 3,
                                      child: ListTile(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 16),
                                        leading: CircleAvatar(
                                          radius: 24,
                                          backgroundColor:
                                              _statusBackgroundColor(status),
                                          child: Icon(
                                            _statusIcon(status),
                                            color: _statusTextColor(status),
                                            size: 28,
                                          ),
                                        ),
                                        title: Text(
                                          req.name,
                                          style: const TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Expanded(
                                                  flex: 1,
                                                  child: Icon(
                                                    Icons.location_on,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 4,
                                                  child: Text(
                                                    req.location,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                        fontFamily: 'Lora',
                                                        color: Colors.grey),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 4),
                                            Row(
                                              children: [
                                                Text(
                                                  'time: ${req.startTime} - ${req.endTime}',
                                                  style: const TextStyle(
                                                      fontFamily: 'Lora',
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(width: 16),
                                            Text(
                                              'price: ${req.price}',
                                              style: const TextStyle(
                                                  fontFamily: 'Lora',
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        trailing: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4, horizontal: 8),
                                          child: Text(
                                            req.statusRequest!,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: _statusTextColor(status),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
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
