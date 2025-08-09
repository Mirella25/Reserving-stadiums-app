import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewStadiumDetailsPage extends StatefulWidget {
  const ViewStadiumDetailsPage({super.key});

  @override
  State<ViewStadiumDetailsPage> createState() => _ViewStadiumDetailsPageState();
}

class _ViewStadiumDetailsPageState extends State<ViewStadiumDetailsPage> {
  int _current = 0;
  List images = [
    "assets/images/stadiums_background.jpg",
    "assets/images/stadiums_background.jpg",
    "assets/images/stadiums_background.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (_, idx, __) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.asset(
                      images[idx],
                      width: 1.sw,
                      height: 220.h,
                      fit: BoxFit.cover,
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  enableInfiniteScroll: true,
                  height: 250.h,
                  viewportFraction: 1.0,
                  onPageChanged: (i, __) => setState(() => _current = i),
                ),
              ),
              Positioned(
                top: 12.h,
                left: 12.w,
                child: CircleAvatar(
                  backgroundColor: Colors.black38,
                  radius: 16.r,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.arrow_back_ios,
                        size: 16.r, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ),
              Positioned(
                bottom: 2.h,
                right: 155.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(images.length, (i) {
                    return Container(
                      width: _current == i ? 12.w : 8.w,
                      height: 8.h,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      decoration: BoxDecoration(
                        color:
                            _current == i ? Colors.green : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    );
                  }),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
