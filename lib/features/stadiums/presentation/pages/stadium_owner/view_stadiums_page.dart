import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/pages/stadium_owner/view_stadium_details_page.dart';
import 'package:reserving_stadiums_app/features/stadiums/presentation/widgets/stadium_owner/stadiums_loading.dart';

class Stadium {
  final String id;
  final String name;
  final String location;
  final String imageUrl;

  Stadium({
    required this.id,
    required this.name,
    required this.location,
    required this.imageUrl,
  });
}

class ViewStadiumsPage extends StatefulWidget {
  const ViewStadiumsPage({super.key});

  @override
  State<ViewStadiumsPage> createState() => _ViewStadiumsPageState();
}

class _ViewStadiumsPageState extends State<ViewStadiumsPage> {
  bool _isLoading = true;
  List<Stadium> _stadia = [];
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _stadia = List.generate(10, (i) {
          return Stadium(
            id: '$i',
            name: 'Stadium ${i + 1}',
            location: 'City ${i + 1}',
            imageUrl: 'assets/images/stadiums_background.jpg',
          );
        });
        _isLoading = false;
      });
    });
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
                  "Stadiums",
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontFamily: 'Poppins',
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: _isLoading
                  ? StadiumsLoading()
                  : AnimationLimiter(
                      child: GridView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.w,
                        mainAxisSpacing: 8.h,
                      ),
                      itemCount: _stadia.length,
                      itemBuilder: (context, index) {
                        final stadium = _stadia[index];
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
                                        builder: (_) =>
                                            ViewStadiumDetailsPage(),
                                      ));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(12.r)),
                                        child: Image.asset(
                                          stadium.imageUrl,
                                          height: 100.h,
                                          fit: BoxFit.cover,
                                          errorBuilder: (_, __, ___) =>
                                              Container(
                                            height: 100.h,
                                            color: Colors.grey[300],
                                            child: Icon(Icons.broken_image,
                                                size: 40.r),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.w),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              stadium.name,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 4.h),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  color: Colors.red,
                                                ),
                                                Text(
                                                  stadium.location,
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: Colors.grey[600]),
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
                    )))
        ],
      )),
    );
  }
}
