// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
// import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';
// import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_bloc.dart';
// import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_event.dart';
// import 'package:reserving_stadiums_app/features/sport/presentation/bloc/sport_state.dart';
// import 'package:reserving_stadiums_app/features/stadiums/domain/entities/stadium_owner/stadium_entity.dart';
// import 'package:reserving_stadiums_app/features/stadiums/presentation/bloc/stadium_owner/view_stadium_details/view_stadium_details_bloc.dart';
// import 'package:reserving_stadiums_app/features/stadiums/presentation/widgets/stadium_owner/carousel_slider.dart';
// import 'package:reserving_stadiums_app/features/stadiums/presentation/widgets/stadium_owner/stadium_details_bottom_bar.dart';
// import 'package:reserving_stadiums_app/features/stadiums/presentation/widgets/stadium_owner/stadium_details_loading.dart';
// import 'package:reserving_stadiums_app/shared/widgets/error_message.dart';

// class ViewFacilityDetailsPage extends StatefulWidget {
//   final int stadiumId;
//   const ViewFacilityDetailsPage({super.key, required this.stadiumId});

//   @override
//   State<ViewFacilityDetailsPage> createState() =>
//       _ViewFacilityDetailsPageState();
// }

// class _ViewFacilityDetailsPageState extends State<ViewFacilityDetailsPage> {
//   List<String> imagesFallback = [
//     "assets/images/stadium-stock-illustration-icon-png-favpng-tLkyRNQ7QrvSxvBvebaedfB94.jpg",
//     // "assets/images/stadiums_background.jpg",
//   ];

//   // --- facilities state & controller (local only) ---
//   final List<String> _facilities = ['mmm'];
//   final TextEditingController _facilityCtrl = TextEditingController();
//   bool _isAddingFacility = false;
//   @override
//   void initState() {
//     super.initState();

//     final sportState = context.read<SportBloc>().state;
//     if (sportState is! SportLoaded && sportState is! SportLoading) {
//       context.read<SportBloc>().add(LoadSportsEvent());
//     }
//   }

//   @override
//   void dispose() {
//     _facilityCtrl.dispose();
//     super.dispose();
//   }

//   Future<void> _showAddFacilitySheet() async {
//     _facilityCtrl.clear();
//     await showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(top: Radius.circular(12.r))),
//       builder: (ctx) {
//         return Padding(
//           padding:
//               EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Container(
//                     width: 40.w,
//                     height: 4.h,
//                     decoration: BoxDecoration(
//                         color: Colors.grey[300],
//                         borderRadius: BorderRadius.circular(4.r))),
//                 SizedBox(height: 12.h),
//                 TextField(
//                   controller: _facilityCtrl,
//                   textInputAction: TextInputAction.done,
//                   decoration: InputDecoration(
//                     hintText: 'Enter facility name (e.g. Parking, Shower)',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8.r)),
//                     suffixIcon: _isAddingFacility
//                         ? const Padding(
//                             padding: EdgeInsets.all(12.0),
//                             child: SizedBox(
//                                 width: 16,
//                                 height: 16,
//                                 child:
//                                     CircularProgressIndicator(strokeWidth: 2)),
//                           )
//                         : null,
//                   ),
//                 ),
//                 SizedBox(height: 12.h),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: OutlinedButton(
//                         onPressed: () => Navigator.of(ctx).pop(),
//                         child: const Text('Cancel'),
//                       ),
//                     ),
//                     SizedBox(width: 8.w),
//                     Expanded(
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: AppColors.primaryColor),
//                         onPressed: _isAddingFacility
//                             ? null
//                             : () async {
//                                 final val = _facilityCtrl.text.trim();
//                                 if (val.isEmpty) return;
//                                 setState(() => _isAddingFacility = true);

//                                 await Future.delayed(
//                                     const Duration(milliseconds: 300));

//                                 setState(() {
//                                   _facilities.add(val);
//                                   _isAddingFacility = false;
//                                 });
//                                 Navigator.of(ctx).pop();
//                               },
//                         child: const Text('Add'),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 8.h),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Future<void> _confirmRemoveFacility(String f) async {
//     final confirmed = await showDialog<bool>(
//       context: context,
//       builder: (dctx) => AlertDialog(
//         title: const Text('Remove facility'),
//         content: Text('Remove "$f"?'),
//         actions: [
//           TextButton(
//               onPressed: () => Navigator.of(dctx).pop(false),
//               child: const Text('Cancel')),
//           ElevatedButton(
//               onPressed: () => Navigator.of(dctx).pop(true),
//               child: const Text('Remove')),
//         ],
//       ),
//     );
//     if (confirmed == true) {
//       setState(() {
//         _facilities.remove(f);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => getIt<ViewStadiumDetailsBloc>()
//         ..add(LoadStadiumDetailsEvent(id: widget.stadiumId)),
//       child: Scaffold(
//         bottomNavigationBar: StadiumDetailsBottomBar(),
//         body: SafeArea(
//           child: BlocBuilder<ViewStadiumDetailsBloc, ViewStadiumDetailsState>(
//             builder: (context, state) {
//               if (state.isLoading) {
//                 return const DetailsShimmer();
//               }

//               if (state.errorMessage != null &&
//                   state.errorMessage!.isNotEmpty) {
//                 return ErrorMessage(message: state.errorMessage!);
//               }

//               final StadiumEntity? stadium = state.stadium;

//               final List<dynamic> photosToShow =
//                   (stadium?.photos != null && stadium!.photos!.isNotEmpty)
//                       ? stadium.photos!.map((e) => e.toString()).toList()
//                       : imagesFallback;

//               return Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CarouselSliderWidget(
//                     photosToShow: photosToShow,
//                   ),
//                   Expanded(
//                     child: SingleChildScrollView(
//                       child: Padding(
//                         padding: EdgeInsets.all(8.w),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(height: 10.h),
//                             Text(stadium?.name ?? 'Stadium name',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 24.sp,
//                                     fontFamily: 'Poppins')),
//                             Row(
//                               children: [
//                                 const Expanded(
//                                   flex: 1,
//                                   child: Icon(Icons.location_on,
//                                       color: Colors.red),
//                                 ),
//                                 SizedBox(width: 4.w),
//                                 Expanded(
//                                   flex: 5,
//                                   child: Text(
//                                     stadium?.location ?? 'stadium location',
//                                     overflow: TextOverflow.ellipsis,
//                                     maxLines: 2,
//                                     style: TextStyle(
//                                         fontFamily: 'Lora',
//                                         fontSize: 14.sp,
//                                         color: Colors.grey[600]),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 10.h),

//                             Row(
//                               children: [
//                                 Icon(Icons.sports_basketball_rounded,
//                                     color: Colors.grey[600]),
//                                 SizedBox(width: 6.w),
//                                 BlocBuilder<SportBloc, SportState>(
//                                   builder: (context, sportState) {
//                                     final sportId = stadium?.sportId;
//                                     if (sportId == null) {
//                                       return Text('Unknown sport',
//                                           style: TextStyle(
//                                               fontFamily: 'Lora',
//                                               color: Colors.grey[600]));
//                                     }

//                                     if (sportState is SportLoaded) {
//                                       final matches = sportState.sports
//                                           .where((s) => s.id == sportId);
//                                       final match = matches.isNotEmpty
//                                           ? matches.first
//                                           : null;
//                                       final name =
//                                           match?.name ?? 'Unknown sport';
//                                       return Text(name,
//                                           style: TextStyle(
//                                               fontFamily: 'Lora',
//                                               color: Colors.grey[600],
//                                               fontWeight: FontWeight.w500));
//                                     } else if (sportState is SportLoading) {
//                                       return Text('Loading sport...',
//                                           style: TextStyle(
//                                               fontFamily: 'Lora',
//                                               color: Colors.grey[600]));
//                                     } else {
//                                       return Text('Unknown sport',
//                                           style: TextStyle(
//                                               fontFamily: 'Lora',
//                                               color: Colors.grey[600]));
//                                     }
//                                   },
//                                 ),
//                               ],
//                             ),

//                             SizedBox(height: 10.h),
//                             Row(
//                               children: [
//                                 Icon(Icons.timer, color: Colors.grey[600]),
//                                 SizedBox(width: 4.w),
//                                 Text(
//                                     '${stadium?.startTime ?? '--'} - ${stadium?.endTime ?? '--'}',
//                                     style: TextStyle(
//                                         fontFamily: 'Lora',
//                                         color: Colors.grey[600],
//                                         fontWeight: FontWeight.w500)),
//                               ],
//                             ),
//                             SizedBox(height: 10.h),
//                             Row(
//                               children: [
//                                 Icon(Icons.phone, color: Colors.grey[600]),
//                                 SizedBox(width: 4.w),
//                                 Text('${stadium?.ownerNumber ?? '--'}',
//                                     style: TextStyle(
//                                         fontFamily: 'Lora',
//                                         color: Colors.grey[600],
//                                         fontWeight: FontWeight.w500)),
//                               ],
//                             ),
//                             SizedBox(height: 10.h),
//                             Row(
//                               children: [
//                                 Icon(Icons.height, color: Colors.grey[600]),
//                                 SizedBox(width: 4.w),
//                                 Text('${stadium?.length ?? '--'}(cm)',
//                                     style: TextStyle(
//                                         fontFamily: 'Lora',
//                                         color: Colors.grey[600],
//                                         fontWeight: FontWeight.w500)),
//                                 SizedBox(width: 50.w),
//                                 Icon(Icons.width_full, color: Colors.grey[600]),
//                                 SizedBox(width: 4.w),
//                                 Text('${stadium?.width ?? '--'}(cm)',
//                                     style: TextStyle(
//                                         fontFamily: 'Lora',
//                                         color: Colors.grey[600],
//                                         fontWeight: FontWeight.w500)),
//                               ],
//                             ),
//                             SizedBox(height: 10.h),
//                             Text('Description',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w800,
//                                     fontSize: 20.sp,
//                                     fontFamily: 'Montserrat')),
//                             Padding(
//                               padding: EdgeInsets.all(5.w),
//                               child: Text(
//                                 stadium?.description ?? '-',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     color: Colors.grey[600],
//                                     fontFamily: 'Lora',
//                                     overflow: TextOverflow.ellipsis),
//                                 maxLines: 4,
//                               ),
//                             ),

//                             SizedBox(height: 10.h),

//                             // --- Facilities section (local-only) ---
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text("Facilities",
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.w800,
//                                         fontSize: 20.sp,
//                                         fontFamily: 'Montserrat')),
//                                 TextButton.icon(
//                                     onPressed: _showAddFacilitySheet,
//                                     icon: const Icon(
//                                       Icons.add,
//                                       color: AppColors.primaryColor,
//                                     ),
//                                     label: const Text(
//                                       'Add',
//                                       style: TextStyle(
//                                         color: AppColors.primaryColor,
//                                         fontFamily: 'Lora',
//                                       ),
//                                     )),
//                               ],
//                             ),
//                             const SizedBox(height: 8),
//                             if (_facilities.isEmpty)
//                               Container(
//                                 width: double.infinity,
//                                 padding: EdgeInsets.symmetric(
//                                     vertical: 16.h, horizontal: 12.w),
//                                 decoration: BoxDecoration(
//                                     color: Colors.grey.shade100,
//                                     borderRadius: BorderRadius.circular(8.r)),
//                                 child: Column(
//                                   children: [
//                                     const Icon(Icons.info_outline,
//                                         size: 36, color: Colors.grey),
//                                     SizedBox(height: 8.h),
//                                     const Text('No facilities yet'),
//                                   ],
//                                 ),
//                               )
//                             else
//                               SizedBox(
//                                 height: 56.h,
//                                 child: ListView.separated(
//                                   scrollDirection: Axis.horizontal,
//                                   itemCount: _facilities.length,
//                                   separatorBuilder: (_, __) =>
//                                       SizedBox(width: 8.w),
//                                   itemBuilder: (context, idx) {
//                                     final f = _facilities[idx];
//                                     return Chip(
//                                       backgroundColor: Colors.grey.shade100,
//                                       labelPadding: EdgeInsets.symmetric(
//                                           horizontal: 8.w, vertical: 6.h),
//                                       label: Text(f,
//                                           style: TextStyle(fontSize: 13.sp)),
//                                       deleteIcon: Icon(Icons.close, size: 18.r),
//                                       onDeleted: () =>
//                                           _confirmRemoveFacility(f),
//                                     );
//                                   },
//                                 ),
//                               ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
