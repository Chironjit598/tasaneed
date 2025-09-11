import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/features/another_screens/drawer_screens/presentation/controller/my_order_controller.dart';

class OrderImageCarousel extends StatelessWidget {
  const OrderImageCarousel({
    super.key,
    required this.images,
    this.height,
  });

  final List<String> images;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyOrderController>(
      builder: (c) {
        final h = (height ?? 300.h);
        return ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: Stack(
            children: [
              SizedBox(
                height: h,
                width: double.infinity,
                child: PageView.builder(
                  controller: c.pageController,
                  itemCount: images.length,
                  onPageChanged: c.onPageChanged,
                  itemBuilder: (context, index) {
                    return CommonImage(
                      height: h,
                      width: double.infinity,
                      fill: BoxFit.cover,
                      imageSrc: images[index],
                    );
                  },
                ),
              ),
              // Bottom gradient overlay
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.6),
                      ],
                    ),
                  ),
                ),
              ),
              // Dots indicator
              Positioned(
                bottom: 10.h,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(images.length, (i) {
                    final bool active = i == c.currentIndex;
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: EdgeInsets.symmetric(horizontal: 3.w),
                      height: 6.r,
                      width: active ? 14.r : 6.r,
                      decoration: BoxDecoration(
                        color: active ? AppColors.primaryColor : Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
