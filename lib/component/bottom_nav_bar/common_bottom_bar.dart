import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../config/route/app_routes.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_images.dart';
import '../text/common_text.dart';
import '../image/common_image.dart';

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
    AppRoutes.myCollectionsScreen, // Collections
    AppRoutes.chat,
    AppRoutes.profile, // Settings/Profile
  ];

  String getTitle(int index) {
    return ["Home", "Category", "Collections", "Inbox", "Settings"][index];
  }

  String selectedImageSrc(int index) {
    return [
      AppImages.homeActive,
      AppImages.categoryActive,
      AppImages.collectionActive,
      AppImages.messageActive,
      AppImages.profileActive, // Settings (using profile assets)
    ][index];
  }

  String unselectedImageSrc(int index) {
    return [
      AppImages.homeInactive,
      AppImages.categoryInactive,
      AppImages.collectionInactive, // Collections
      AppImages.messageInactive,
      AppImages.profileInactive,
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(5, (index) => buildNavItem(index)),
        ),
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
              color: isSelected ? AppColors.title2 : AppColors.transparent,
            ),
            child: CommonImage(
              height: 24,
              width: 24,
              fill: BoxFit.fill,
              imageSrc: isSelected ? selectedImageSrc(index) : unselectedImageSrc(index),
            ),
          ),
          SizedBox(height: 2.h),
          CommonText(
            fontSize: 11,
            fontWeight:isSelected ?FontWeight.w500 : FontWeight.w400,
            text: getTitle(index),
            color: isSelected ? AppColors.title2 : AppColors.titleColor,
          ),
        ],
      ),
    );
  }
}
