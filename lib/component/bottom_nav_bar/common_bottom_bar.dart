import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';

import '../../config/route/app_routes.dart';
import '../../utils/constants/app_colors.dart';
import '../image/common_image.dart';
import '../text/common_text.dart';

class CommonBottomNavBar extends StatefulWidget {
  final int currentIndex;

  const CommonBottomNavBar({required this.currentIndex, super.key});

  @override
  State<CommonBottomNavBar> createState() => _CommonBottomNavBarState();
}

class _CommonBottomNavBarState extends State<CommonBottomNavBar> {
  final List<String> routes = [


    AppRoutes.userHomeScreen,
    AppRoutes.categoryScreen,
    AppRoutes.nunnyBookingDetailsScreen,
    AppRoutes.chat,
    AppRoutes.profile,
    AppRoutes.profile,
  ];

  String getTitle(int index) {
    return ["Home", "Category", "Resell", "Inbox", "Profile"][index];
  }

  CommonImage selectedIcon(int index) {
    return [
      CommonImage(
          height: 24,
          width: 24,
          fill: BoxFit.fill,
          imageSrc: AppImages.homeActive),
      CommonImage(
          height: 24,
          width: 24,
          fill: BoxFit.fill,
          imageSrc: AppImages.categoryActive),
      CommonImage(
          height: 24,
          width: 24,
          fill: BoxFit.fill,
          imageSrc: AppImages.sellIcon),
      CommonImage(
          height: 24,
          width: 24,
          fill: BoxFit.fill,
          imageSrc: AppImages.messageActive),
      CommonImage(
          height: 24,
          width: 24,
          fill: BoxFit.fill,
          imageSrc: AppImages.profileActive),



    ][index];
  }

  CommonImage unselectedIcon(int index) {
    return [
      CommonImage(
          height: 24,
          width: 24,
          fill: BoxFit.fill,
          imageSrc: AppImages.homeInactive),
      CommonImage(
          height: 24,
          width: 24,
          fill: BoxFit.fill,

          imageSrc: AppImages.categoryInactive),
      CommonImage(
          height: 24,
          width: 24,
          fill: BoxFit.fill,
          imageSrc: AppImages.sellIcon),
      CommonImage(
          height: 24,
          width: 24,
          fill: BoxFit.fill,
          imageSrc: AppImages.messageInactive),
      CommonImage(
          height: 24,
          width: 24,
          fill: BoxFit.fill,
          imageSrc: AppImages.profileInactive),
    ][index];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(5, (index) {

              if (index == 2) return const SizedBox(width: 70);
              return buildNavItem(index);
            }),
          ),
          Positioned(
            top: -37,
            child: Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                   Get.toNamed(AppRoutes.userReselScreen);
                  },
                  backgroundColor: AppColors.primaryColor,
                  shape: const CircleBorder(),
                  child: CommonImage( imageSrc: AppImages.sellIcon),
                ),
                SizedBox(height: 27.h),
                CommonText(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  text: "Resell",
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(int index) {
    bool isSelected = widget.currentIndex == index;
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(routes[index]);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(40.r),
              color: isSelected ? AppColors.primaryColor : AppColors.transparent,
            ),
            child:isSelected?selectedIcon(index):unselectedIcon(index) ,
          ),
          SizedBox(height: 2.h),
          CommonText(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            text: getTitle(index),
          ),
        ],
      ),
    );
  }
}
