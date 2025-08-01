import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/features/stadium/presentation/bloc/stadium_owner/view_stadium_requests/stadium_requests_bloc.dart';
import 'package:reserving_stadiums_app/features/stadium/presentation/widgets/stadium_request_loading.dart';
import 'package:reserving_stadiums_app/shared/widgets/error_message.dart';

enum RequestStatus { pending, accepted, rejected }

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
  @override
  void initState() {
    super.initState();
    context.read<StadiumRequestsBloc>().add(LoadStadiumRequestsEvent());
  }

  Color _statusColor(RequestStatus s) {
    switch (s) {
      case RequestStatus.accepted:
        return Colors.green.shade100;
      case RequestStatus.rejected:
        return Colors.red.shade100;
      case RequestStatus.pending:
        return Colors.orange.shade100;
    }
  }

  IconData _statusIcon(RequestStatus s) {
    switch (s) {
      case RequestStatus.accepted:
        return Icons.check_circle;
      case RequestStatus.rejected:
        return Icons.cancel;
      case RequestStatus.pending:
        return Icons.hourglass_empty;
    }
  }

  String _statusLabel(RequestStatus s) {
    switch (s) {
      case RequestStatus.accepted:
        return 'مقبول';
      case RequestStatus.rejected:
        return 'مرفوض';
      case RequestStatus.pending:
        return 'قيد الانتظار';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  } else if (state.errorMessage != null) {
                    return ErrorMessage(message: state.errorMessage!);
                  }
                  final list = state.stadiumEntity ?? [];
                  if (list.isEmpty) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Lottie.asset(
                            'assets/lootie/Empty.json',
                            width: 200.w,
                            height: 200.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
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
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 500),
                          child: SlideAnimation(
                            verticalOffset: 50,
                            child: FadeInAnimation(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                shadowColor: AppColors.borderColor,
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                elevation: 5,
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 16),
                                  leading: CircleAvatar(
                                    radius: 24,
                                    backgroundColor: _statusColor(
                                        req.status as RequestStatus),
                                    child: Icon(
                                      _statusIcon(req.status as RequestStatus),
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                  title: Text(
                                    req.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  subtitle: Text(
                                    req.location,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  trailing: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 8),
                                    decoration: BoxDecoration(
                                      color: _statusColor(
                                          req.status as RequestStatus),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      _statusLabel(req.status as RequestStatus),
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w600,
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
    );
  }
}
