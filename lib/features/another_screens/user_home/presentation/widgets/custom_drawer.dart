// drawer.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/config/route/app_routes.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.background,

      child: Column(
        children: [
          // Header Section with profile image, name, and email
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: AppColors.background),

            accountName: CommonText(
              fontSize: 18,
                top: 6,
                fontWeight: FontWeight.w600,
                color: AppColors.titleColor,
                text: "Jack Henry"), // Name
            accountEmail:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: AppColors.primaryColor)
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 3.h
              ),
              child: CommonText(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  text: AppString.viewProfile),
            ), // Email
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.primaryColor,
                  width: 2
                )
              ),
              child: ClipOval(child: CommonImage(
                  fill: BoxFit.cover,
                  imageSrc: AppImages.female)),
            ),
          ),

          16.height,

          InkWell(
            onTap: (){
              Get.toNamed(AppRoutes.myListingScreen);
            },
            child: Row(
              children: [
                25.width,
                CommonImage(
                    height: 20,
                    width: 20,
                    imageSrc: AppImages.myListing),
                CommonText(
                  left: 8,
                    color: AppColors.titleColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    textAlign: TextAlign.start,
                    text: AppString.myListing)

              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 25.w, top: 10.h, right: 35.w),
            width: double.infinity,
            color: AppColors.stroke,
            height: 2,
          ),

          16.height,

          Row(
            children: [
              25.width,
              Icon(
                  size: 23.sp,
                  Icons.shopping_cart_outlined),
              CommonText(
                left: 8,
                  color: AppColors.titleColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textAlign: TextAlign.start,
                  text: AppString.purchaseHistory)

            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 25.w, top: 10.h, right: 35.w),
            width: double.infinity,
            color: AppColors.stroke,
            height: 2,
          ),

          16.height,

          Row(
            children: [
              25.width,
              Icon(Icons.save_outlined),
              CommonText(
                left: 8,
                  color: AppColors.titleColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textAlign: TextAlign.start,
                  text: AppString.saved)

            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 25.w, top: 10.h, right: 35.w),
            width: double.infinity,
            color: AppColors.stroke,
            height: 1,
          ),




        ],
      ),
    );
  }
}
