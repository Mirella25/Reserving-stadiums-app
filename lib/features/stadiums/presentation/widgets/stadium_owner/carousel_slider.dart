import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/constants/app_strings.dart';
import 'package:shimmer/shimmer.dart';

class CarouselSliderWidget extends StatefulWidget {
  final List<dynamic> photosToShow;
  final bool showBackButton;

  const CarouselSliderWidget({
    super.key,
    required this.photosToShow,
    this.showBackButton = true,
  });

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int _current = 0;

  String _fullUrl(String path) {
    final base = AppConstants.mediaBaseUrl; // مثال: http://10.0.2.2:8000
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
      loadingBuilder: (c, child, progress) {
        if (progress == null) return child;
        return SizedBox(
          width: width ?? double.infinity,
          height: height ?? 200.h,
          child: Center(
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(color: Colors.grey.shade300),
            ),
          ),
        );
      },
      errorBuilder: (c, e, s) {
        return Container(
          width: width ?? double.infinity,
          height: height ?? 200.h,
          color: Colors.grey[300],
          child: Icon(
            Icons.broken_image,
            size: 40.r,
            color: AppColors.primaryColor,
          ),
        );
      },
    );
  }

  bool _isAsset(String src) {
    return src.startsWith('assets/') || src.startsWith('package:');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: widget.photosToShow.length,
          itemBuilder: (_, idx, __) {
            final dynamic raw = widget.photosToShow[idx];
            final src = raw?.toString() ?? '';
            final isAsset = _isAsset(src);
            return ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: isAsset
                  ? Image.asset(
                      src,
                      width: 1.sw,
                      height: 220.h,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        height: 220.h,
                        width: double.infinity,
                        color: Colors.grey[300],
                        child: Icon(
                          Icons.broken_image,
                          size: 40.r,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    )
                  : _netImage(
                      // build correct full URL for network paths (handles relative paths)
                      src.startsWith('http') ? src : _fullUrl(src),
                      width: double.infinity,
                      height: 250.h,
                      fit: BoxFit.cover,
                    ),
            );
          },
          options: CarouselOptions(
            autoPlay: widget.photosToShow.length <= 1 ? false : true,
            autoPlayInterval: const Duration(seconds: 3),
            enableInfiniteScroll: true,
            height: 250.h,
            viewportFraction: 1.0,
            onPageChanged: (i, __) => setState(() => _current = i),
          ),
        ),
        if (widget.showBackButton)
          Positioned(
            top: 12.h,
            left: 12.w,
            child: CircleAvatar(
              backgroundColor: Colors.black38,
              radius: 16.r,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon:
                    Icon(Icons.arrow_back_ios, size: 16.r, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
        if (widget.photosToShow.length > 1)
          Positioned(
            bottom: 2.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.photosToShow.length, (i) {
                return Container(
                  width: _current == i ? 12.w : 8.w,
                  height: 8.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: BoxDecoration(
                    color: _current == i ? Colors.green : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                );
              }),
            ),
          ),
      ],
    );
  }
}
