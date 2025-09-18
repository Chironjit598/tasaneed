import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/config/route/app_routes.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class CreateExhibitionSuccessPopup {
  static void show() {
    showDialog(
      context: Get.context!,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
          insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Stack(
              children: [
                // Close button
                Positioned(
                  right: 0,
                  child: InkWell(
                    onTap: (){
                      Get.back();
                      
                    },
                    child: Container(
                      padding: EdgeInsets.all(4.h),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.bodyClr),
                      ),
                      child: Icon(Icons.close, color: AppColors.bodyClr, size: 18.sp),
                    ),
                  ),
                ),
                // Content
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 28.h),
                    CommonImage(imageSrc: AppImages.confirm, height: 72.h, width: 72.h),
                    SizedBox(height: 20.h),
                    CommonText(
                      text: AppString.itemListedSuccessfully,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 12.h),
                    CommonText(
                      text: AppString.itemListedSuccessfullyDes,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),

                    30.height
               ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CreateNewExhibitionSuccessPopup {
  static void show() {
    showDialog(
      context: Get.context!,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
          insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Stack(
              children: [
                // Close button
                Positioned(
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                      Get.offAllNamed(AppRoutes.myEventScreen);
                    },
                    child: Container(
                      padding: EdgeInsets.all(4.h),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.bodyClr),
                      ),
                      child: Icon(Icons.close, color: AppColors.bodyClr, size: 18.sp),
                    ),
                  ),
                ),
                // Content
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 28.h),
                    CommonImage(imageSrc: AppImages.confirm, height: 72.h, width: 72.h),
                    SizedBox(height: 20.h),
                    CommonText(
                      text: AppString.yourEventIsNowLive,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 12.h),
                    CommonText(
                      text: AppString.yourEventIsNowLiveDes,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),

                    30.height
               ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CreateNewExhibitionSuccessPopup2 {
  static void show() {
    showDialog(
      context: Get.context!,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
          insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Stack(
              children: [
                // Close button
                Positioned(
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                      Get.offAllNamed(AppRoutes.myExhibitionsScreen);
                    },
                    child: Container(
                      padding: EdgeInsets.all(4.h),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.bodyClr),
                      ),
                      child: Icon(Icons.close, color: AppColors.bodyClr, size: 18.sp),
                    ),
                  ),
                ),
                // Content
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 28.h),
                    CommonImage(imageSrc: AppImages.confirm, height: 72.h, width: 72.h),
                    SizedBox(height: 20.h),
                    CommonText(
                      text: AppString.yourEventIsNowLive,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 12.h),
                    CommonText(
                      text: AppString.yourEventIsNowLiveDes,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),

                    30.height
               ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
